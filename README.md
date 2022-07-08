# ufs-htf
Hierarchical Testing Framework for ufs-weather-model


## How to use

Currently there are 6 tests (you can type ``ctest -N`` to see the list) existed.

```
Orion-login-3[364] ycteng$ ctest -N
Test project /work/noaa/epic-ps/ycteng/case/20220630/ufs-htf/build
  Test #1: test_build_ufs
  Test #2: test_get_ufs_fix_data
  Test #3: test_ATM_c96_Barry
  Test #4: test_S2S_c96_Barry
  Test #5: test_S2SW_c96_Barry
  Test #6: test_Barry_track

Total Tests: 6
Orion-login-3[365] ycteng$ ctest  test_S2SW_c96_Barry
Test project /work/noaa/epic-ps/ycteng/case/20220630/ufs-htf/build
    Start 1: test_build_ufs
1/6 Test #1: test_build_ufs ...................   Passed  949.83 sec
    Start 2: test_get_ufs_fix_data
2/6 Test #2: test_get_ufs_fix_data ............   Passed    0.06 sec
    Start 3: test_ATM_c96_Barry
3/6 Test #3: test_ATM_c96_Barry ...............   Passed  1553.80 sec
    Start 4: test_S2S_c96_Barry
4/6 Test #4: test_S2S_c96_Barry ...............   Passed  1644.87 sec
    Start 5: test_S2SW_c96_Barry
5/6 Test #5: test_S2SW_c96_Barry ..............   Passed  1652.09 sec
    Start 6: test_Barry_track
6/6 Test #6: test_Barry_track .................   Passed   38.22 sec

100% tests passed, 0 tests failed out of 6

```

Total Test time (real) = 5838.89 sec
