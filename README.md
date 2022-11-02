# ufs-htf
Hierarchical Testing Framework for ufs-weather-model. Insipred by [ufs case studies](https://ufs-case-studies.readthedocs.io/en/develop/Intro.html), we
implemented one of the cases (2019 Hurricane Barry) for ufs coupled model setup (S2S and S2SW). The whole test set inclues:

* building ufs model and its utilities;
* staging model input data from AWS S3 bucket;
* atm-only run for 2019 Hurricane Barry (C96 grid; based on global workflow)
* atm-ocn-ice coupled run for 2019 Hurricane Barry (C96 grid; based on global workflow)
* atm-ocn-ice-wav coupled run for 2019 Hurricane Barry (C96 grid; based on global workflow)
* atm-ocn-ice-wav-a coupled run for 2019 Hurricane Barry (C96 grid; based on global workflow)
* vrfy1: hurricane track check
* vrfy2: comparsion between model and reanalysis/obs
* atm-ocn-ice coupled run for 2019 Hurricane Barry (C96 grid, fcst step only)


## How to use

Please see [User Guide](https://ufs-htf.readthedocs.io/en/latest/BuildHTF.html#download-the-ufs-htf-prototype) for details.

## tmp

.. code-block:: console

    Test project /work/noaa/epic-ps/ycteng/case/20220828/ufs-htf/build/test
        Start 1: build_ufs
    1/9 Test #1: build_ufs ..........................   Passed  907.80 sec
        Start 2: get_ufs_fix_data
    2/9 Test #2: get_ufs_fix_data ...................   Passed    0.08 sec
        Start 3: ATM_c96_Michael
    3/9 Test #3: ATM_c96_Michael ....................   Passed  1226.49 sec
        Start 4: S2S_c96_Michael
    4/9 Test #4: S2S_c96_Michael ....................   Passed  1273.41 sec
        Start 5: S2SW_c96_Michael
    5/9 Test #5: S2SW_c96_Michael ...................   Passed  1329.12 sec
        Start 6: S2SWA_c96_Michael
    6/9 Test #6: S2SWA_c96_Michael ..................   Passed  1771.19 sec
        Start 7: Plot_track_err
    7/9 Test #7: Plot_track_err .....................   Passed   28.91 sec
        Start 8: model_vrfy
    8/9 Test #8: model_vrfy .........................   Passed   66.50 sec
        Start 9: fcst_only_S2S_c96_Michael
    9/9 Test #9: fcst_only_S2S_c96_Michael ..........   Passed  821.40 sec

    100% tests passed, 0 tests failed out of 9

    Total Test time (real) = 7424.93 sec

