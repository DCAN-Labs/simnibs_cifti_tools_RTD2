## System Requirements
- Simnibs 
- Python 3.6
  - nibabel 
  - numpy
  - subprocess
- Matlab 
- Workbench Command 
- SLURM
- Bash 

## Instructions 
1. Clone Simnibs Cifti Tools from https://github.com/DCAN-Labs/simnibs_cifti_tools
2. Obtain a container for Simnibs 3 
## System Requirements for MSI user 
- Singularity 
- Simnibs 
- Python 3.6
  - nibabel 
  - numpy
- Matlab 
- Workbench Command 

## Set up for MSI user  
1. There is a current working version that was cloned from the github repo (https://github.com/DCAN-Labs/simnibs_cifti_tools) located at /projects/standard/miran045/shared/code/internal/pipelines/simnibs_cifti_tools/production_branch/ 
2. This installation relies on a containerized Simnibs version 3 existing at /projects/standard/faird/shared/code/internal/pipelines/container_simnibs/sing_test_simnibs_alone_debian.sif plus the existing matlab installation version  
3. Ensure you know the full path to the left and right hemisphere surfaces in 32k native space resolution for the following surfaces for your desired subject:
- Midthickness
- Pial
- White
4. Ensure you have the full paths to the T1w & T2w of the desired subject in native resolution. 
5. Make your own subject specific settings file script following the instructions at [Sample settings file](https://simnibs-cifti-tools-rtd.readthedocs.io/en/latest/Efield_generator/#running-an-example)
6. For an example on using the code for the Efield Generator, follow the instructions at [Running an example](https://simnibs-cifti-tools-rtd.readthedocs.io/en/latest/Efield_generator/#running-an-example)  
