#!/bin/bash

source /usr/share/lmod/6.6/init/bash
module purge
module use /home/builder/opt/hpc-modules/modulefiles/stack
module load hpc hpc-gnu hpc-openmpi
module load netcdf hdf5 bacio sfcio sigio nemsio w3emc esmf fms crtm g2 png zlib g2tmpl ip sp w3nco gfsio wgrib2 upp
module load pio gftl-shared yafyaml
module load mapl/2.22.0-esmf-v8.3.0b09
module load prod_util
export PATH=/home/builder/miniconda/bin:$PATH
export PATH=/home/builder/.local/bin:$PATH
