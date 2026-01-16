# Basic Example

The goal of this document is to aid in using Simnibs Cifti Tools with the default settings.

## File Setup

In order to follow along with this document you will need to download the below files and have them all in a directory where you will be following along with this tutorial.
You will also need access to miran045 on MSI for this stage in the tools development.

### List of files to download in preparation for this tutorial

- Weighted images
  - [T1w](./basic_example/T1w/T1w_acpc_dc_restore.nii.gz)
  - [T2w](./basic_example/T1w/T2w_acpc_dc_restore.nii.gz)
- Surface files
  - [L Pial](./basic_example/T1w/fsaverage_LR32k/MSC06.L.pial.32k_fs_LR.surf.gii)
  - [R Pial](./basic_example/T1w/fsaverage_LR32k/MSC06.R.pial.32k_fs_LR.surf.gii)
  - [L White](./basic_example/T1w/fsaverage_LR32k/MSC06.L.white.32k_fs_LR.surf.gii)
  - [R White](./basic_example/T1w/fsaverage_LR32k/MSC06.R.white.32k_fs_LR.surf.gii)
  - [L Midthickness](./basic_example/T1w/fsaverage_LR32k/MSC06.L.midthickness.32k_fs_LR.surf.gii)
  - [R Midthickness](./basic_example/T1w/fsaverage_LR32k/MSC06.R.midthickness.32k_fs_LR.surf.gii)
- Inflated imaging files
  - [L Inflated](./basic_example/T1w/fsaverage_LR32k/MSC06.L.inflated.32k_fs_LR.surf.gii)
  - [R Inflated](./basic_example/T1w/fsaverage_LR32k/MSC06.R.inflated.32k_fs_LR.surf.gii)
- Functional dlabel.nii file
  - [Functional dlabel file](./basic_example/Dlabel_files/sub-MSC08_ses-combined_task-rest-299minutes_truncated_bold_template_matched_Zscored_scanthresh3_recolored.dlabel.nii)
- Anatomical Aparc aseg dlabel.nii files
  - [Anatomical aparc](./basic_example/Dlabel_files/MSC06.aparc.32k_fs_LR.dlabel.nii)
  - [Anatomical aparc a2009s](./basic_example/Dlabel_files/MSC06.aparc.a2009s.32k_fs_LR.dlabel.nii)
- Settings file script
  - [default_settings_file.sh](./basic_example/default_settings_file.sh)

Have these files saved in the directory you plan to run Simnibs Cifti Tools from. Once there, make a directory called resources then move all of the imaging files and dlabel files into that directory.

```bash
mkdir resources
mv *.{gii,nii,gz} resources
```

### Sample settings script for this example

The sample settings file script viewable below is where all key settings get set through flags and arguments. See [Arguments and Flags](args_flags.md) for additional details.

```bash
#!/bin/bash

path_to_sct_repo=/projects/standard/miran045/shared/code/internal/pipelines/simnibs_cifti_tools/production_branch/simnibs_cifti_tools
current_dir=$(pwd)
data_dir=${current_dir}/resources

${path_to_sct_repo}/preprocessing/settings_file_reader.sh \
--SID sub-MSC06 \
--VISIT ses-combined \
--OUTPUT_FOLDER ${current_dir}/simulation_outputs \
--P_SCT_REPO ${path_to_sct_repo} \
--work_location ${current_dir} \
--brain_target dlpfc \
--P_F_dlabel ${data_dir}/sub-MSC06_ses-combined_task-rest-299minutes_truncated_bold_template_matched_Zscored_scanthresh3_recolored.dlabel.nii \
--P_A_dlabel ${data_dir}/MSC06.aparc.32k_fs_LR.dlabel.nii \
--P_A_dlabel_2009 ${data_dir}/MSC06.aparc.a2009s.32k_fs_LR.dlabel.nii \
--P_T1w ${data_dir}/T1w_acpc_dc_restore.nii.gz \
--P_T2w ${data_dir}/T2w_acpc_dc_restore.nii.gz \
--P_L_mdthk_native ${data_dir}/MSC06.L.midthickness.32k_fs_LR.surf.gii \
--P_R_mdthk_native ${data_dir}/MSC06.R.midthickness.32k_fs_LR.surf.gii \
--P_L_pial_native ${data_dir}/MSC06.L.pial.32k_fs_LR.surf.gii \
--P_R_pial_native ${data_dir}/MSC06.R.pial.32k_fs_LR.surf.gii \
--P_L_white_native ${data_dir}/MSC06.L.white.32k_fs_LR.surf.gii \
--P_R_white_native ${data_dir}/MSC06.R.white.32k_fs_LR.surf.gii \
--path_L_inflated ${data_dir}/MSC06.L.inflated.32k_fs_LR.surf.gii \
--path_R_inflated ${data_dir}/MSC06.R.inflated.32k_fs_LR.surf.gii
```

*For other usages update the flags in your saved script appropriately based on [argument and flags](./args_flags#arguments-and-flags.md).*

## Starting Simnibs Cifti Tools

To begin the process of finding optimal targets execute the below command.

```bash
bash default_settings_file.sh
```
