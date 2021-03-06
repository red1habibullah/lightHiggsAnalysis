#!/bin/bash
#parse arguments
if [ $# -ne 2 ]
    then
    echo "Usage: GIVE ME A NEW TAG and then a Old Tag!"
    exit 0
fi

new_tag="${1}"
old_tag="${2}"

#export SCRAM_ARCH=slc6_amd64_gcc481
eval `scramv1 runtime -sh`

DATE=`date +TIME_%H-%M-%S__DATE_%y-%m-%d`
FILENAME="CRAB_SUBMIT_ALL_${new_tag}_${DATE}.txt"

#sed -i "s|${old_tag}|${new_tag}|g" crabConf*

crab submit crabConfig_ST_sch_4l.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_sch_incl.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tch_antitop_herwigpp.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tch_antitop_pythia8.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tch_antitop_TuneCUET.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tch_top_herwigpp.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tch_top_pythia8.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tch_top_TuneCUET.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tW_incl_8M1.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tW_incl_8M2.py >> $FILENAME
echo "" >> $FILENAME
crab submit crabConfig_ST_tW_NoHadr.py >> $FILENAME
echo "" >> $FILENAME





