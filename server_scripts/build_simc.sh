cd /simc/src
git reset --hard
git pull
cd engine
compiler=clang++
make clean
make MODULE=/simc/build/simc CXX=${compiler} release -j2 > /simc/logs/build.txt
