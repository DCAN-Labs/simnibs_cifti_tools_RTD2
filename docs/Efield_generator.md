 Function Overview 
===============

This function takes as input the path to a processed data ([BIDS outputs](https://bids.neuroimaging.io)) and the atlas (or Native) coordinates of the target to stimulate and based on that generates the corresponding Efield distribution. 

Mandatory System Requirements 
--------------- 

In order to run the efield generator, the fuction requires the following:

- Path to processed data (derivatives): To optamize the function, BIDS format works best. This needs to contain the T1 nifti file and optionally the T2 nifti file 

- Coordinates of the target to stimulate: X, Y and Z in Native space
Grayordinate. 

- Output folder



Optional Inputs 
--------------- 


Outputs 
---------------
- Efield files
- - Volume (masked and unmasked)
- - - atlas
- - - Native
- - Surface (gifti and cifti)
- - - atlas
- - - Native
- Coil position : This is a matrix within a text file in Brainsight structure.(Dr Mo provided us one file example that we have to use as reference)
- Auxiliary outputs
- - FEM



Usage Examples 
--------------- 


![Simnibs Cifti Tools Efield Generation Flow Diagram](TMS_flow.jpg)

