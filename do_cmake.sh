#!/bin/bash

pushd hdf5/hdf5-1_14_3 > /dev/null

export GCRYPT_ROOT_DIR=${PSCRATCH}/install/libgcrypt/
export GPG_ERROR_ROOT_DIR=${PSCRATCH}/install/libgpg-error

rm -r out
mkdir out

pushd out > /dev/null

cmake -DCMAKE_C_COMPILER=`which mpicc` \
      -DCMAKE_CXX_COMPILER=`which mpicxx` \
      -DCMAKE_Fortran_COMPILER=`which mpifort` \
      -DHDF5_ENABLE_PARALLEL=ON \
      -DCMAKE_INSTALL_PREFIX=${PSCRATCH}/install/hdf5-lifeboat-ins \
      ..



popd > /dev/null
popd > /dev/null
