#!/bin/sh

cd $1
tar -xjf x11perf-1.5.tar.bz2
cd x11perf-1.5/
./configure
make -j $NUM_CPU_JOBS
cd ..

echo "#!/bin/sh
cd x11perf-1.5/
./x11perf \$@" > x11perf
chmod +x x11perf
