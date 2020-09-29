#!/bin/bash
# Run it as sh run.sh option
# option can be 
#    writeNow: Stops simulation on completion of current time step and writes data.
#    noWriteNow: Stops simulation on completion of current time step and does not write out data.
#    nextWrite: Stops simulation on completion of next scheduled write time, specified by writeControl.
#    restart: Change the stopAt to endTime
#    help: write the help


if [ $1 == "restart" ]
then

sed s/writeNow/endTime/g system/controlDict > system/controlDict2  
sed s/noWriteNow/endTime/g system/controlDict > system/controlDict2 
sed s/nextWrite/endTime/g system/controlDict > system/controlDict2


else

sed s/endTime/$1/ system/controlDict > system/controlDict2   

fi

cp system/controlDict2 system/controlDict
