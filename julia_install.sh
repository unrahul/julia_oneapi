#!/bin/bash

cd /tmp
wget https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.2-linux-x86_64.tar.gz &&\
	tar -xvf julia-1.8.2-linux-x86_64.tar.gz && sudo mv julia-1.8.2 /usr/local/bin/ &&\
	echo "PATH=$PATH:/usr/local/bin/julia-1.8.2/bin/" >> ~/.bashrc

cd

