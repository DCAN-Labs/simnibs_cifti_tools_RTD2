## Mandatory for this guide

Ensure you have access to and know the following information: - faird, and miran045 shares on MSI - The subjects ID: i.e. MSC06 - The session identifier: i.e. ses-1

## Making personalized wrappers for running a subject through SCT

1.  Connect to msi either through MobaXterm or through Open OnDemand [ondemand link](https://msi.umn.edu/about-msi-services/interactive-hpc/open-ondemand)
2.  From a terminal type the command below changing 'SUBJ' with your actual subjects ID as well as replacing '/path_to_desired/location/' with where you want this file to be on MSI. `cp /projects/standard/miran045/shared/training/Efield_modeling/setting_file_template.sh /path_to_desired/location/settings_file_SUBJ.sh`
3.  Edit settings_file_SUBJ.sh

-   Change after the equals sign in line 2 to correspond with the subject ID used when the imaging data was processed.
-   Change line 3 after the equals sign to be the session identifier used.
-   Update the path to where you would like the simulations to be stored. This can occupy up to 50GB of storage space.
-   Update the location you would like the scripts and results to be stored. The final results will occupy around 5GB of storage space.
-   Ensure that you include the appropriate classification for your desired brain target. Currently the available options are as follows:

1.  dlpfc
2.  all To use the brain_target *all* you will need to also include the flag `--P_F_dlabel_table` with the path to a functional dlabel table to use as a reference.
3.  A space separated list of which functional networks you would like to have targeted.
    1.  Aud CO DMN
    2.  FP MTL SAL
    3.  Vis SMd PON

<!-- -->

4.  Execute the settings file made. `bash /path_to_desired/location/setting_file_sub-FAKE01.sh`
5.  The settings_file_reader.sh will map the surfaces and volume inputs provided into the directory you specified as your working directory for use by Simnibs Cifti Tools.
6.  The settings file will generate a png showing how the surfaces provided look when overlaid with the functional dlabel file provided. This can be viewed at the working location you specified.
7.  The settings file will then make personalized wrappers for use and submit as slurm batch jobs tied together as dependencies in the order of preparing coords, simulating candidate locations, then determining the optimal targeting solution.

-   A prepare_SCT_coords wrapper. Generates the csv file used by Simnibs Cifti Tools to know which coordinates to simulate based on the user defined brain_target.
-   A sct_simulations wrapper. This script submits each candidate coordinate to receive simulated stimulation via a simnibs container. This script cycles through submitting all of the candidate coordinates until all of them have been simulated successfully, sometimes a coordinate simulation will fail and need to be resubmitted, this wrapper automatically checks for and accounts for that scenario.
-   An Optimal Targeting Solution (OTaS) wrapper. The OTaS wrapper generates a matrix which quantifies the amount of energy produced by each simulation as well as identifies the optimal location to target based on the users find_the_best_by specification.

## To Know

-   If there is a file called quick_wrapper.m in the designated output directory that has restrictive permissions the sct_wrapper will fail if someone without permission to this file tries to run the code. The sct_wrapper creates a temporary matlab script called quick_wrapper.m after each job submitter script submits all of the candidate coordinates to determine which coordinates need to be resubmitted. Without permissions to the quick_wrapper.m file it cannot do this and thus it errors and thinks there are no more coordinates that need to be resubmitted after the first submission of candidate coordinates.
-   The preparatory patches script is resampling the native surface files down to 32k resolution, creating csv files based on these resampled native surfaces which contains a full list of potential coordinates to stimulate as well as which functional and anatomical network they are assigned to and a visualization of how the surfaces align with the functional dlabel.nii file provided. After the csv files have been generated we refine the list of potential coordinates to be simulated based on the functional networks and hemisphere/lobe regions of interest (for this project that is the CiO, Def, SAL networks and the left and right frontal lobes). With the refined list of candidate coordinates we submit them in a cyclical process until all of the candidates get simulated. From the completed simulations we perform some additional analysis to find and visualize the optimal location (coordinates) to stimulate based on which optimization criteria we have deemed as appropriate.