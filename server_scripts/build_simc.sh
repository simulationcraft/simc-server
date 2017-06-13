cd /simc/src
git reset --hard
git pull
cd engine
compiler=g++
make clean
make MODULE=/simc/build/simc CXX=${compiler} release -j2 > /simc/logs/build.txt
