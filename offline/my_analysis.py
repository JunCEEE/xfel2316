#%%
import os
os.chdir('/gpfs/exfel/exp/SPB/202130/p900201/usr/Software/juncheng/spb20210529/offline')
import combine_modules
#%%
run = 351
c = combine_modules.AGIPD_Combiner(run,geom_fname='../geometry/agipd_2696_v5.geom')