# openFoamStopSimulation
With this script, you will automatically change the controlDict file in the openFoam system folder in order to stop or restart your simulation.

You can simple modifiy the code in order to reach your goal.

### Controls the end time of the simulation

> - **writeNow**: Stops simulation on completion of current time step and writes data.
> - **noWriteNow**: Stops simulation on completion of current time step and does not write out data.
> - **nextWrite**: Stops simulation on completion of next scheduled write time, specified by writeControl.

For more information about the openFOAM command, see:

[opeFOAM guide](https://cfd.direct/openfoam/user-guide/v6-controldict/)

### Restart

To restart the simulation, you have to set the control **stopAt** to **endTime**


### How to run

Simply run it as 

> sh run.sh argument

where argument can be:
> - **writeNow**: Stops simulation on completion of current time step and writes data.
> - **noWriteNow**: Stops simulation on completion of current time step and does not write out data.
> - **nextWrite**: Stops simulation on completion of next scheduled write time, specified by writeControl.

to stop the simulation

or

> sh run.sh restart

for restart the simulation

For any help, run sh run.sh --help
