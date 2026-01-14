## Disclaimer

This software was built and developed on MSI and relies heavily on the resources available by this HCP environment. All system requirements are satisfied if you use this pipeline while on MSI.

## Set up for MSI user

1.  There is a current working version that was cloned from the [Github repository](https://github.com/DCAN-Labs/simnibs_cifti_tools) located at: `/projects/standard/miran045/shared/code/internal/pipelines/simnibs_cifti_tools/production_branch/simnibs_cifti_tools`
2.  This installation relies on a containerized Simnibs version 3 existing at `/projects/standard/faird/shared/code/internal/pipelines/container_simnibs/sing_test_simnibs_alone_debian.sif` plus the existing matlab installation version\
3.  Ensure you know the full path to the left and right hemisphere surfaces in **32k native space resolution** for the following surfaces for your desired subject:
    1.  Midthickness
    2.  Pial
    3.  White

<!-- -->

4.  Ensure you have the full paths to the T1w & T2w of the desired subject in native resolution.
5.  Have available the full paths to the functional dlabel file you would like to use as well as the subjects **aparc aseg dlabel files**.
6.  Make your own subject specific settings file script following the example seen at [Sample settings file](https://simnibs-cifti-tools-rtd2.readthedocs.io/en/latest/args_flags/#sample-settings-file)
7.  For an example on using the code for the Efield Generator, follow the instructions at [Running an example](https://simnibs-cifti-tools-rtd2.readthedocs.io/en/latest/Efield_generator/#running-an-example)

*To resample higher resolution surfaces down to 32k resolution see [FAQ](https://simnibs-cifti-tools-rtd2.readthedocs.io/en/latest/FAQ/)* *To generate subject specific aparc aseg dlabel files see [FAQ](https://simnibs-cifti-tools-rtd2.readthedocs.io/en/latest/FAQ/)*

## System Requirements

-   Simnibs
-   Python 3.6
    -   nibabel
    -   numpy
    -   subprocess
-   Matlab
-   Workbench Command
-   SLURM
-   Bash
-   Singularity

## Instructions

1.  Clone Simnibs Cifti Tools from <https://github.com/DCAN-Labs/simnibs_cifti_tools>
2.  Obtain a container for Simnibs 3
