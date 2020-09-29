#!/bin/bash
# Run it as sh run.sh option
# option can be 
#    writeNow: Stops simulation on completion of current time step and writes data.
#    noWriteNow: Stops simulation on completion of current time step and does not write out data.
#    nextWrite: Stops simulation on completion of next scheduled write time, specified by writeControl.
#    restart: Change the stopAt to endTime
#    help: write the help

if [ "$1" = "restart" ];
    then
    
sed s/'writeNow'/'$1'/ system/controlDict > system/controlDict2  
sed s/'noWriteNow'/'$1'/ system/controlDict > system/controlDict2 
sed s/'nextWrite'/'$1'/ system/controlDict > system/controlDict2

elseif [ "$1" = "help" ];
echo"
writeNow: Stops simulation on completion of current time step and writes data.
noWriteNow: Stops simulation on completion of current time step and does not write out data.
nextWrite: Stops simulation on completion of next scheduled write time, specified by writeControl.
restart: Change the stopAt to endTime
help: write the help"

else
sed s/'$1'/'endTime'/ system/controlDict > system/controlDict2   
fi

cp system/controlDict2 system/controlDict
