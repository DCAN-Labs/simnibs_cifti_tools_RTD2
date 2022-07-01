## System Requirements
- Simnibs 
- Python 3.6
  - nibabel 
  - numpy
- Matlab 
- Workbench Command 

## Instructions 
1. Clone Simnibs Cifti Tools from https://github.com/DCAN-Labs/simnibs_cifti_tools

## System Requirements for MSI user 
- Singularity 
- Simnibs 
- Python 3.6
  - nibabel 
  - numpy
- Matlab 
- Workbench Command 

## Set up for MSI user  
1. There is a current working version that was cloned from the github repo (https://github.com/DCAN-Labs/simnibs_cifti_tools) located at /panfs/roc/groups/8/faird/shared/code/internal/pipelines/simnibs_cifti_tools 
2. This installation relies on a containerized simnibs version existing at /panfs/roc/groups/8/faird/shared/code/internal/pipelines/container_simnibs/sing_test_simnibs_alone_debian.sif plus the existing matlab installation version (For the FEM generation stage, when calling the container the following line must be explicitly written " -B /panfs/roc/msisoft/matlab/R2019a/:/usr/local/bin/matlab/" this mounts matlab into a local folder within the container) 
3. For an example on using the code follow the instructions at [Running an example] (https://simnibs-cifti-tools-rtd.readthedocs.io/en/latest/Efield_generator/#running-an-example)  
