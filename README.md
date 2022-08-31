# ufs-htf
Hierarchical Testing Framework for ufs-weather-model. Insipred by [ufs case studies](https://ufs-case-studies.readthedocs.io/en/develop/Intro.html), we
implemented one of the cases (2019 Hurricane Barry) for ufs coupled model setup (S2S and S2SW) in develop branch. The whole test set inclues:

* building ufs model and its utilities;
* staging model input data from AWS S3 bucket;
* atm-only run for 2019 Hurricane Barry (C96 grid; based on global workflow)
* atm-ocn-ice coupled run for 2019 Hurricane Barry (C96 grid; based on global workflow)
* atm-ocn-ice-wav coupled run for 2019 Hurricane Barry (C96 grid; based on global workflow)
* atm-ocn-ice-wav-aerosol coupled run for 2019 Hurricane Barry (C96 grid; based on global workflow)
* vrfy1: hurricane track check
* vrfy2: comparsion between model and reanalysis/obs
* atm-ocn-ice coupled run for 2019 Hurricane Barry (C96 grid, fcst step only)


## How to use

Please see [User Guide](https://ufs-htf.readthedocs.io/en/latest/BuildHTF.html#download-the-ufs-htf-prototype) for details.

## Run in docker (docker/jenkins branches only)

User can run toy example with docker container on NOAA cloud (e.g. AWS). It requies 8 cores, 16gb mem, and ~40 gb space (e.g. c5n.4xlarge).

User can follow the follwoing command to run toy example using docker on NOAA cloud:
```console
cd ~/
sudo systemctl start docker
sudo docker run --rm clouden90/ubuntu20.04-gnu9.3-hpc-stack-htf:latest /bin/bash -c "bash ./docker/recipe/run_toy.sh"
```
A simple Jenkinsfile to run ctest build_ufs with Jenkins is also provided.
