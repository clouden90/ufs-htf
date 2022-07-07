# ufs-htf
Hierarchical Testing Framework for ufs-weather-model

Currently, the following configurations are supported/tested:

Machine     | Orion  | Hera   | Hera   |
------------|--------|--------|--------|
Compiler(s) | Intel  | Intel  | Intel  |

## Build and get input data from s3 bucket
```
git clone --recurse-submodules -b test https://github.com/clouden90/ufs-htf.git
cd ufs-htf
mkdir build
cmake ..
cd test
./prep.sh --platform=PLATFORM_NAME(e.g. orion) -d
```

## How to use

Currently there are 6 tests (you can type ``ctest -N`` to see the list) existed.

```
[Yi-cheng.Teng@hfe01 test]$ ctest -N
Test project /scratch2/NCEPDEV/stmp1/Yi-cheng.Teng/epic/20220707/ufs-htf/build/test
  Test #1: test_ATM_regional
  Test #2: test_ATM_c96_p8
  Test #3: test_S2S_c96mx100_p8
  Test #4: test_S2SW_c96mx100_p8
  Test #5: test_S2SWA_c96mx100_p8
  Test #6: test_S2SWA_c192mx050_p8
Total Tests: 6
```
The core requirtments for each tests are listed as follow:
Test1: 68
Test2: 150
Test3: 180
Test4: 200
Test5: 200
Test6: 464

To run the tests, tou have to first switch to computing nodes:
```
salloc --ntasks 480 --qos=debug --time=00:30:00 --account=epic-ps
```
Then run the ctest:
```
[Yi-cheng.Teng@h4c15 test]$ ctest
Test project /scratch2/NCEPDEV/stmp1/Yi-cheng.Teng/epic/20220707/ufs-htf/build/test
    Start 1: test_ATM_regional
1/6 Test #1: test_ATM_regional ................   Passed   60.95 sec
    Start 2: test_ATM_c96_p8
2/6 Test #2: test_ATM_c96_p8 ..................   Passed   59.45 sec
    Start 3: test_S2S_c96mx100_p8
3/6 Test #3: test_S2S_c96mx100_p8 .............   Passed   83.60 sec
    Start 4: test_S2SW_c96mx100_p8
4/6 Test #4: test_S2SW_c96mx100_p8 ............   Passed   81.97 sec
    Start 5: test_S2SWA_c96mx100_p8
5/6 Test #5: test_S2SWA_c96mx100_p8 ...........   Passed  140.39 sec
    Start 6: test_S2SWA_c192mx050_p8
6/6 Test #6: test_S2SWA_c192mx050_p8 ..........   Passed  314.01 sec

100% tests passed, 0 tests failed out of 6

Total Test time (real) = 740.40 sec
```
