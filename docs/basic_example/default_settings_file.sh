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