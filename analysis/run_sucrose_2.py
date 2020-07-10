from mpi4py import MPI
import os, sys

comm = MPI.COMM_WORLD
size = comm.Get_size()
rank = comm.Get_rank()

runs = range(71,79)
for i in range(len(runs))[rank::size]:
    os.system("python sphere_fitting.py %d /scratch/loh/benedikt/XFEL/xfel2316/" %runs[i])
