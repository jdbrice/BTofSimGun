#!/bin/bash

jobID=$1
echo "JobID=$jobID"

# Generate a random seed for the job
# # crypto quality random number - should also work in parallel since thread safe
trandom="$(od -vAn -N4 -tu4 < /dev/urandom | tr -d '[:space:]')"
n_evts=1
./runStarSim.sh $trandom $n_evts

mv pythia6.starsim.root gen_${jobID}_${trandom}.GenTree.root
mv pythia6.starsim.fzd gen_${jobID}_${trandom}.GEANT.fzd

./runBFC.sh gen_${jobID}_${trandom}.GEANT.fzd $n_evts

mv FemtoDst.root gen_${jobID}_${trandom}.FemtoDst.root
