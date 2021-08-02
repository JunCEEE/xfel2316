import mpi4py
print(mpi4py)

from mpi4py import MPI
use_mpi = MPI.COMM_WORLD.Get_size() > 1 
print(use_mpi)
