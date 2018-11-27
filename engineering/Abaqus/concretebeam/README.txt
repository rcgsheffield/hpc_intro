
3D Concrete Beam Under Load Stress
==================================

 *Abaqus => 2017
 *Simulating top-down load stress on a concrete plate
 *Number of elements is  48000
 *Number of nodes is     57687

In this example we run an abaqus job and  visualise the data for 
post-procressing by importing the .odb database file via Abaqus CAE

1. Open the job script and study the script file
submit the job to the scheduler using the command

qsub sub.sh


2. Check the status of the job using the commmand 

qstat

3. Start the abaqus workbench

module load apps/abaqus/2017/binary
abaqus cae


4. Visualise the output from the model you just ran

From the work bench file open menu select the file Beam-mesh.odb
 File > Open > File Filter: Model Database (*.cae) > OK

 
   

NB: 