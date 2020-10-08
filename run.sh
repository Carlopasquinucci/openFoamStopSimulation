#!/bin/bash

# Run it as sh run.sh option
# option can be 
#    writeNow: Stops simulation on completion of current time step and writes data.
#    noWriteNow: Stops simulation on completion of current time step and does not write out data.
#    nextWrite: Stops simulation on completion of next scheduled write time, specified by writeControl.
#    restart: Change the stopAt to endTime
#    --help: write the help


if [[ $# -eq 0 ]] ; then
    echo 'Assign an argument, at least writeNow or restart. Run --help for more details'
    exit 1
fi

if [[  $1 == "--help"  ]] ; then
    echo ' Run it as sh run.sh argument'
    echo ' Arguments available:'
    echo '    writeNow: Stops simulation on completion of current time step and writes data.'
    echo '    noWriteNow: Stops simulation on completion of current time step and does not write out data.'
    echo '    nextWrite: Stops simulation on completion of next scheduled write time, specified by writeControl.'
    echo '    restart: Change the stopAt to endTime'
    echo '    --help: write the help'
    exit 1
fi


if [ $1 == "restart" ]
then

sed s/writeNow/endTime/g system/controlDict > system/controlDict2
cp system/controlDict2 system/controlDict 
sed s/noWriteNow/endTime/g system/controlDict > system/controlDict2
cp system/controlDict2 system/controlDict 
sed s/nextWrite/endTime/g system/controlDict > system/controlDict2
cp system/controlDict2 system/controlDict


else

sed s/endTime/$1/ system/controlDict > system/controlDict2
cp system/controlDict2 system/controlDict

fi
