 Function Overview 
===============


System Requirements 
--------------- 
In order to run the efield generator, the fuction requires the following:
- Path to processed data (derivatives). Ideally it should be in BIDS format. Later we might want to take standard HCP output folder structure (or refer to a parser HCP2BIDS)
- This needs to contain the T1 nifti file and optionally the T2 nifti file. The one that comes after realignment (also T2 if any)
- Coordinates of the target to stimulate: X, Y and Z in Native space.
- Grayordinate. If this is the case, we also need to specify the grayordinate space
- Consider adding a validator/feedback to the user to tell her/him if the coordinate is in the skull, gray matter, white matter or any other tissue
- Output folder



Inputs 
--------------- 


Outputs 
---------------


Usage Examples 
--------------- 


![Simnibs Cifti Tools Efield Generation Flow Diagram](TMS_flow.jpg)

