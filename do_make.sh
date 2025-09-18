#!/bin/bash

pushd hdf5/hdf5-1_14_3 > /dev/null
pushd out > /dev/null

make -j`nproc` && make install

popd > /dev/null
popd > /dev/null
