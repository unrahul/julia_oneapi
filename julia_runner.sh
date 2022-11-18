#!/bin/bash
. ~/.bashrc


# clone workshop materials
mkdir -p ${HOME}/julia_oneapi

# placeholder code, will be updating with workshop code by Novm 18, 2022
git clone https://github.com/mitmath/18S191 ${HOME}/julia_oneapi
cd ${HOME}/julia_oneapi

# install Pluto
julia -e "import Pkg; Pkg.add(\"Pluto\")"

# precompile packages
julia --project=${HOME}/pluto-deployment-environment -e "import Pkg; Pkg.instantiate(); Pkg.precompile()"

# run pluto bind to port 8080
julia --project=${HOME}/julia_oneapi/pluto-deployment-environment -e "import Pluto; Pluto.run(port=8080)"
