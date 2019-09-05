# BTofSimGun
Code for running simulation gun (Not full events, just desired processes) -> simulates only a few tracks per event through STARsim and event reco. This is a minimal setup with BTOF working. Not, for timing you may need to simulate sufficient number of pions into the VPD acceptance (~4.1-5.2 in eta). Also does MC association on reco tracks

```
$git clone git@github.com:jdbrice/BTofSimGun.git  
$cd BTofSimGun  
$starver dev
$cons  
```

Then you can run a full go with 
```
./run.sh <JOB_ID>
``` 

You can edit the `run.sh` file to change the number of events per job.

The outout is a FemtoDst file which is similar to PcioDst but with less stuff.

