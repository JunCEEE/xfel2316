"""
For testing the EuXFEL backend, start the karabo server:

./karabo-bridge-server-sim 1234
    OR
./karabo-bridge-server-sim -d AGIPDModule -r 1234

from the karabo-bridge (https://github.com/European-XFEL/karabo-bridge-py).
and then start the Hummingbird backend:

./hummingbird.py -b examples/euxfel/mock/conf.py
"""
import plotting.image
import plotting.line
import plotting.correlation
import analysis.agipd
import analysis.event
import analysis.hitfinding
import analysis.pixel_detector
import ipc.mpi
from backend import add_record

import numpy as np
import sys, os; sys.path.append(os.path.split(__file__)[0])
from online_agipd_calib import AGIPD_Calibrator
from online_agipd_calib import common_mode_correction
# from online_agipd_calib import common_mode_correction_twopass as common_mode_correction
import xfel_online as xo


state = {}
state['Facility'] = 'EuXFELtrains'
state['EuXFEL/DataSource'] = 'tcp://10.253.0.51:45000' # Raw
# state['EuXFEL/DataSource'] = 'tcp://127.0.0.1:1234' # Raw
# state['EuXFEL/DataSource'] = 'tcp://max-display001.desy.de:1234' # Raw
# state['EuXFEL/DataSource'] = 'tcp://127.0.0.1:1234' # Raw

# We're gonna comment the GMD as it's not available in karabo-bridge
# state['EuXFEL/DataSource_GMD'] = 'tcp://10.253.0.142:6666' # Hack for the GMD
state['EuXFEL/DataFormat'] = 'Raw'
state['EuXFEL/MaxTrainAge'] = 4

##
## *** CHANGE THIS TO THE NUMBER OF TRAINS WHEN RUNNING FOR REAL!! *** ##
##
state['EuXFEL/MaxPulses'] = 352

##
## *** CHANGE THIS TO THE MODULE YOU WANT WHEN RUNNING FOR REAL!! *** ##
##
# We're just using 0 because that's all the karabo-bridge simulator can produce
# Use SelModule = None or remove key to indicate a full detector
# state['EuXFEL/SelModule'] = 0 # None # 0
state['EuXFEL/SelModule'] = 15 # None # 0
filtered_pulses_per_train = 64


# Roundness
roundness_calculator = xo.Roundness()

# Parameters and buffers
running_background = None

# Switches
alignment  = True
hitfinding = True
background = True
statistics = True
calibrate  = True
commonmode = True
usemask = False
sizing = True
photon_count = True

# Photon count parameters
adu_threshol2d_ph_count = 32
adu_photon = 100


# Hitfinding parameters
adu_threshold  = adu_threshol2d_ph_count
#adu_threshold  = 37
# hit_threshold  = 400
hit_threshold  = 60
# hit_threshold  = 100 # Trigger hits even with no beam
hit_threshold_strong = hit_threshold * 1.5
maskhit_threshold = 47
ratio_threshold = 2
# sumhit_threshold = 3000
sumhit_threshold = 580000
dark_threshold = 50

# Pulse filter. 600 is large enough for the number of cell in the AGIPD with some room to spare
base_pulse_filter = np.ones(600, dtype="bool")
base_pulse_filter[state['EuXFEL/MaxPulses']:] = False
base_pulse_filter[0] = False
# base_pulse_filter[18::32] = False
# base_pulse_filter[29::32] = False

# AGIPD calibrator
# path_to_calib = "/gpfs/exfel/exp/SPB/201802/p002160/usr/Shared/calib/latest/"
path_to_calib = "/gpfs/exfel/exp/SPB/202130/p900201/usr/Software/calib/r0343-r0344-r0345/"
calibrator = AGIPD_Calibrator([path_to_calib + "Cheetah-AGIPD15-calib.h5"], max_pulses=state['EuXFEL/MaxPulses'])
# calibrator = AGIPD_Calibrator([path_to_calib + "Cheetah-AGIPD04-calib.h5"], max_pulses=state['EuXFEL/MaxPulses'])

# maximum nr. of hits to be sent per train
show_max_hits = 2

# Build a mask for hitfinding
hitmask = np.zeros((128,512)).astype(np.bool)
hitmask[:64,:64] = True
hitmask = hitmask[:,:,np.newaxis]

# Sperical mask for hitsum finding
hitsum_radius = 30
cx,cy = 15, -20
xx,yy = np.meshgrid(np.arange(128)-cx, np.arange(512)-cy, indexing='ij')
hitsummask = (xx**2 + yy**2) > (hitsum_radius**2)
hitsummask = hitsummask[:,:,np.newaxis]

# Manual mask from file
read_mask = False
manual_mask = np.ones((128,512,1)).astype(np.bool)
if read_mask:
    import h5py
    badpixel_file = "/gpfs/exfel/exp/SPB/201802/p002160/usr/Shared/calib/duane_dark_r0010.h5"
    with h5py.File(badpixel_file, "r") as file_handle:
        manual_mask = file_handle["mask"][...]
    manual_mask = np.bool8(np.transpose(manual_mask, axes=(2,1,0)))#[:, :, np.newaxis])

# Building the initial mask
base_initmask = np.ones((128,512,176)).astype(np.bool)
if usemask:
    base_initmask &= manual_mask

# Size estimation parameters
binning = 1
count = 0

def onEvent(evt):
    global running_background
    global count

    # Calculate number of pulses in each train
    # npulses = len(T.timestamp) #Now get that from the length of the data
    analysis.event.printProcessingRate(pulses_per_event=filtered_pulses_per_train, label="Processing rate (pulses):" )
    analysis.event.printProcessingRate(pulses_per_event=1, label="Processing rate (trains):" )
    count += 1
    print(f"count = {count}")

    T = evt["eventID"]["Timestamp"]
    cellId = T.cellId[pulse_filter[:data_len]]
    trainId = T.trainId[pulse_filter[:data_len]]
    goodcells = T.cellId[pulse_filter[:data_len]]
    badcells = T.badCells
    print(T)
