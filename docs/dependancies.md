# Required Data Files 
In order to run Simnibs Cifti Tools, the following imaging files are required. These files are the result of pre-processing data using a BIDS compatible pipleine (ABCD-HCP or fmriprep pipelines). 
In addition to these imaging files Simnibs Cifti Tools requires a functional maping dlabel.nii file as well as the subject's anatomical aparc.aseg.dlabel.nii files. These are used to determine brain regions for simulation as well as determining the optimal location to stimulate. **If you are only interested in seeing native imaging results only include the T1, T2, inflated,  Native 32k surfaces, and the Dlabel files(3).**

File names

## Weighted magnetic resonance imaging sequences
- T1w_acpc_dc_restore.nii.gz
- T2w_acpc_dc_restore.nii.gz


## Inflated 32k surfaces 
(either native or atlas space) Used for visualizations
- $subj.L.inflated.native.surf.gii
- $subj.R.inflated.native.surf.gii


## Native 32k surfaces
- $subj.L.midthickness.native.surf.gii
- $subj.R.midthickness.native.surf.gii
- $subj.L.white.native.surf.gii
- $subj.L.pial.native.surf.gii
- $subj.R.white.native.surf.gii
- $subj.R.pial.native.surf.gii


## Atlas 32k surfaces
- $subj.L.midthickness.32k_fs_LR.surf.gii
- $subj.R.midthickness.32k_fs_LR.surf.gii
- $subj.L.white.32k_fs_LR.surf.gii
- $subj.L.pial.32k_fs_LR.surf.gii
- $subj.R.white.32k_fs_LR.surf.gii
- $subj.R.pial.32k_fs_LR.surf.gii
- Atlas_ROIs.2.nii.gz


## Dlabel files
- /full_path/derivatives/TemplateMatching/$subj/$subj_ses-1_task-restMENORDICrmnoisevols_space-fsLR_den-91k_desc-denoised_bold_spatially_interpolated_template_matched_Zscored_scanthresh3_recolored.dlabel.nii
- /full_path/$subj/$subj.aparc.32k_fs_LR.dlabel.nii
- /full_path/$subj/$subj.aparc.a2009s.32k_fs_LR.dlabel.nii


