# Required Data Files 
In order to run the efield generator from end to end, the following imaging files are required. These files are the result of pre-processing data using a BIDS compatible pipleine (ABCD-HCP or fmriprep pipelines). **If you are only interested in seeing native imaging results only include the T1, T2, inflated, and Native 32k surfaces.**

File names

## Weighted magnetic resonance imaging sequences
T1w_acpc_dc_restore.nii.gz
T2w_acpc_dc_restore.nii.gz


## Inflated 32k surfaces 
(either native or atlas space) Used for visualizations
$subj.L.inflated.native.surf.gii
$subj.R.inflated.native.surf.gii


## Native 32k surfaces
$subj.L.midthickness.native.surf.gii
$subj.R.midthickness.native.surf.gii
$subj.L.white.native.surf.gii
$subj.L.pial.native.surf.gii
$subj.R.white.native.surf.gii
$subj.R.pial.native.surf.gii


## Atlas 32k surfaces
$subj.L.midthickness.32k_fs_LR.surf.gii
$subj.R.midthickness.32k_fs_LR.surf.gii
$subj.L.white.32k_fs_LR.surf.gii
$subj.L.pial.32k_fs_LR.surf.gii
$subj.R.white.32k_fs_LR.surf.gii
$subj.R.pial.32k_fs_LR.surf.gii
Atlas_ROIs.2.nii.gz


OTHERS

/fsl/6.0.2/etc/flirtsch/ident.mat
