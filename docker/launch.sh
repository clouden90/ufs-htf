#!/bin/bash

source /usr/share/lmod/lmod/init/bash
source /opt/spack-stack/setup.sh
export PATH=$PATH:/opt/dist/usr/local/bin
export LD_LIBRARY_PATH=/opt/spack-stack/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/intel-oneapi-compilers-2022.1.0-jsh6uhe5p4y4niwduxrkqdqzpx4hvzsw/compiler/latest/linux/compiler/lib/intel64:$LD_LIBRARY_PATH
export NDATE=/opt/spack-stack/envs/ufs-srw.intel/.spack-env/view/bin/ndate
export NHOUR=/opt/spack-stack/envs/ufs-srw.intel/.spack-env/view/bin/nhour
spack env activate /opt/spack-stack/envs/ufs-srw.intel
spack load intel-oneapi-mpi@2021.6.0
module use /opt/spack-stack/envs/ufs-srw.intel/install/modulefiles/Core
module load stack-intel
module load stack-intel-oneapi-mpi/2021.6.0
module load netcdf-c netcdf-fortran libpng jasper
module load sp zlib hdf5 netcdf-c netcdf-fortran parallelio esmf fms bacio crtm g2 g2tmpl ip w3nco upp gftl-shared yafyaml mapl gfsio landsfcutil nemsio nemsiogfs sfcio sigio w3emc wgrib2
