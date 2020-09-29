# openFoamStopSimulation
Woth this script, you will automatically change the controlDict file in the openFoam system folder in order to stop or restart your simulation.

You can simple modifiy the code in order to reach your goal.

Controls the end time of the simulation.

    >endTime: Time specified by the endTime keyword entry.
    >writeNow: Stops simulation on completion of current time step and writes data.
    >noWriteNow: Stops simulation on completion of current time step and does not write out data.
    znextWrite: Stops simulation on completion of next scheduled write time, specified by writeControl.

For more information about the openFOAM command, see:

[opeFOAM guide](https://cfd.direct/openfoam/user-guide/v6-controldict/)

