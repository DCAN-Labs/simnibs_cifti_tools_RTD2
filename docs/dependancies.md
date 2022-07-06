# Required Data Files 
In order to run the efield generator from end to end, the following data files are required in BIDS derivatives form. These files are the result of pre-processing data using BIDS compatible pipleine (ABCD-HCP or fmriprep pipelines).  

File name

T1w_acpc_dc_restore.nii.gz
T2w_acpc_dc_restore.nii.gz

ATLAS

$subj.L.midthickness.32k_fs_LR.surf.gii
$subj.R.midthickness.32k_fs_LR.surf.gii
$subj.L.white.32k_fs_LR.surf.gii
$subj.L.pial.32k_fs_LR.surf.gii
$subj.R.white.32k_fs_LR.surf.gii
$subj.R.pial.32k_fs_LR.surf.gii
Atlas_ROIs.2.nii.gz

NATIVE

$subj.L.midthickness.native.surf.gii
$subj.R.midthickness.native.surf.gii
$subj.L.white.native.surf.gii
$subj.L.pial.native.surf.gii
$subj.R.white.native.surf.gii
$subj.R.pial.native.surf.gii


OTHERS

/fsl/6.0.2/etc/flirtsch/ident.mat
