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

## Exploring Outputs 

## Considerations 
Memory and time depends on number of subjects and coordinates of interest. The amount of space required can be estimated using ( equation from google sheet). In the usage example, we ran (#) partipants analyzing (#) coordinates for each partipant. This example required (#) GB of space and completed in(amt of time).

