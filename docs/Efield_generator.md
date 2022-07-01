# Efield Generator 

## Overview 
This function takes as input the path to a processed data ([BIDS outputs](https://bids.neuroimaging.io)) and the atlas (or Native) coordinates of the target to stimulate and based on that generates the corresponding Efield distribution. The following is a flow diagram detailing the specific steps in this function. 

![Simnibs Cifti Tools Efield Generation Flow Diagram](TMS_flow.jpg) 

## Data Preparation

### Mandatory System Requirements  

In order to run the Efield generator, the fuction requires the following:

- Path to processed data (derivatives): To optamize the function, BIDS format works best. This needs to contain the T1 nifti file and optionally the T2 nifti file 

- Coordinates of the target to stimulate: X, Y and Z in Native space
Grayordinate. 

- Output folder


### Optional Inputs 


### Outputs 
The Efield generator creates the following functions:

- Efield files
  - Volume (masked and unmasked)
    - Atlas
    - Native
  - Surface (gifti and cifti)
    - atlas
    - Native
  - Coil position : This is a matrix within a text file in Brainsight structure
  - Auxiliary outputs
    - FEM

## Running an Example 

The procedure to submit a job for one or several subjects and one or several coordinates per subject is as follows:

1) Copy the folder [submit jobs](https://github.com/DCAN-Labs/simnibs_cifti_tools/tree/develop/submit_jobs)  into a local folder
2) Open a terminal window and connect into a MSI session
3) Edit the list_subj file with the paths of the subject data to run (one subject per line) 

### list_subj
```
/path_to/full_processed_data_outputs/sub-00XXX1/ses-V1/
/path_to/full_processed_data_outputs/sub-00XXX2/ses-V1/
...
/path_to/full_processed_data_outputs/sub-00XXXN/ses-V1/
```     
    
3) Edit both coordinates files list_coord1 and list_coord2. This can be in either Atlas or Native space, but must be consistent between files, if coordinates in list_coord1 are in atlas, list_coord2 must be in atlas too. File list_coord1 must contain only one coordinate (Format : X Y Z, in mm). All the remaining coordinates to be calculated must be placed in list_coord2 (Format : X Y Z in mm) with one coordinate per line. 

### list_coord1

```
-46 -30 61
```

### list_coord2
```
39 -18 64
-50 28 23
...
50 28 23
```

4) Edit output_folder variable in **submit_jobs.sh** file as 

```
output_folder=/path/to/output/
```  
5) To use inform the script you are using NativE or Atlas space coordinate, you have to edit in the file **run_one_job.sh** the following line 
where "XYZ_atlas" has to be used if the coordinates are in Atlas, and "XYZ_native" if the coordinates are in native space. In the line above the flag is set as "XYZ_atlas"
```
python $full_path_to_simnibs_cifti_tools/efield_generator/efield_generator.py -XYZ_atlas $coordinates \
-path_mri_processed_data $path_mri_processed_data \

```

Once complete the previous edit, you can run all the jobs by executing the main script submit_jobs.sh . 
This script runs first the FEM generation, then calculates the coil position and corresponding Efield for the coordinate in list_coord1. Once the process is done, it calculates the coil position and corresponding Efield for all the coordinates in list_coord2. 
The script calls in parallel the run_one_job.sh script for all the participants listed in list_subj. 

```
source submit_jobs.sh
```

## Optional parameters
### Node specs in run_one_job.sh script
The script to be ran per each participant data are defined at the begining of the script
The current parameters requested as resources were tested to be suficient to run the analysis.  
```
#SBATCH -J efield_job
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16gb
#SBATCH -t 8:00:00
#SBATCH -p small,amdsmall
#SBATCH -A miran045
```


## Exploring Outputs 

## Considerations 
Memory and time depends on number of subjects and coordinates of interest. The amount of space required can be estimated using ( equation from google sheet). In the usage example, we ran (#) partipants analyzing (#) coordinates for each partipant. This example required (#) GB of space and completed in(amt of time).

