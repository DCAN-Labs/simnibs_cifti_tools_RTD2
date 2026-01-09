# Arguments and Flags

## Key flags
| Flag                | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `--subject`         | Subject ID used throughout the FEM pipeline.                                |
| `--subject_dir`     | Path to subject directory containing FreeSurfer outputs.                    |
| `--output_dir`      | Directory where all FEM and optimization results are written.               |
| `--simnibs_container` | Path to the SimNIBS v3 Singularity container (`.sif`).                    |
| `--simnibs_version` | SimNIBS version string (e.g., `3`).                                        |
| `--coil_name`       | Coil name (must match an existing SimNIBS coil).  

### Available TMS Coils  
**(Pulled from the SimNIBS repository updated Sept 30, 2025)**  
Use one of the following values with the `--coil_name` flag.

---

#### **Magstim**
- `Magstim_70mm_Fig8.ccd`
- `Magstim_70mm_Fig8_Dreal.ccd`
- `Magstim_70mm_Fig8_Dreal_Drakaki22.ccd`
- `Magstim_D50_Alpha_Bl.ccd`
- `MagStim_D70.ccd`
- `MagStim_DCC.ccd`

---

#### **MagVenture**
- `MagVenture_MC_B70.ccd`
- `MagVenture_MC-125.ccd`
- `MagVenture_MC-125_new.ccd`
- `MagVenture_MC_B65_HO8.ccd`
- `MagVenture_C-100.ccd`
- `MagVenture_C-B60.ccd`
- `MagVenture_C-B70.ccd`
- `MagVenture_Cool-B35.ccd`
- `MagVenture_Cool-B65.ccd`
- `MagVenture_Cool-B70.ccd`
- `MagVenture_Cool-D-B80.ccd`
- `MagVenture_MCF-75.ccd`
- `MagVenture_MCF-B65.ccd`
- `MagVenture_MCF0B65_new.ccd`
- `MagVenture_MMC-140-II.ccd`
- `MagVenture_MRI-B91.ccd`
- `MagVenture_MST_Twin.ccd`

---

#### **Deymed**
- `Deymed_120BFV.ccd`
- `Deymed_50BF.ccd`
- `Deymed_70BF.ccd`

---

#### **MagMore**
- `MagMore_PMD25-decentral.ccd`
- `MagMore_PMD45-EEG.ccd`
- `MagMore_PMD70.ccd`

---

#### **How to Use**

Specify any coil from the lists above:

```bash
--coil_name Magstim_70mm_Fig8.ccd
```

### Sample settings file:
To use for darro015 project replace 'sub-fake01' with the actual subjectID & replace 'ses-fake01' with the actual session identifier. 
After running the intial steps to obtain the necessary input files.

```bash
path_to_sct_repo=/projects/standard/miran045/shared/code/internal/pipelines/simnibs_cifti_tools/wip_k_branch/simnibs_cifti_tools

${path_to_sct_repo}/preprocessing/settings_file_reader.sh \
--SID sub-fake01 \
--VISIT ses-fake01 \
--OUTPUT_FOLDER /scratch.global/miran045/shared/projects/Efield_modeling/recode_outputs/precision_functional_mapping \
--P_SCT_REPO ${path_to_sct_repo} \
--work_location /projects/standard/darro015/shared/projects/recode/experiments/alt_coil/sub-fake01 \
--brain_target dlpfc \
--threshold 99.5 \
--P_F_dlabel /projects/standard/darro015/shared/projects/recode/derivatives/TemplateMatching/sub-fake01/sub-fake01_ses-fake01_task-restMENORDICrmnoisevols_space-fsLR_den-91k_desc-denoised_bold_spatially_interpolated_template_matched_Zscored_scanthresh3_recolored.dlabel.nii \
--P_A_dlabel /scratch.global/baron063/shared/recode/sub-fake01/TCB18.aparc.32k_fs_LR.dlabel.nii \
--P_A_dlabel_2009 /scratch.global/baron063/shared/recode/sub-fake01/TCB18.aparc.a2009s.32k_fs_LR.dlabel.nii \
--P_T1w /projects/standard/darro015/shared/projects/recode/derivatives/nordic/sub-fake01/ses-fake01/anat/sub-fake01_ses-fake01_run-01_T1w.nii.gz \
--P_T2w /projects/standard/darro015/shared/projects/recode/derivatives/nordic/sub-fake01/ses-fake01/anat/sub-fake01_ses-fake01_run-01_T2w.nii.gz \
--P_L_mdthk_native /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_hemi-L_desc-msmsulc_midthickness.surf.gii \
--P_R_mdthk_native /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_hemi-R_desc-msmsulc_midthickness.surf.gii \
--P_L_pial_native /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_hemi-L_desc-msmsulc_pial.surf.gii \
--P_R_pial_native /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_hemi-R_desc-msmsulc_pial.surf.gii \
--P_L_white_native /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_hemi-L_desc-msmsulc_white.surf.gii \
--P_R_white_native /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_hemi-R_desc-msmsulc_white.surf.gii \
--path_L_inflated /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_L_desc-hcp_inflated.surf.gii \
--path_R_inflated /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_R_desc-hcp_inflated.surf.gii \
--P_L_mdthk_atlas /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_L_desc-hcp_midthickness.surf.gii \
--P_R_mdthk_atlas /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_R_desc-hcp_midthickness.surf.gii \
--P_L_pial_atlas /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_L_pial.surf.gii \
--P_R_pial_atlas /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_R_pial.surf.gii \
--P_L_white_atlas /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_L_white.surf.gii \
--P_R_white_atlas /scratch.global/baron063/shared/recode/sub-fake01/sub-fake01_ses-fake01_run-01_space-fsLR_den-32k_R_white.surf.gii \
--brain_target_2 Somato-cognitive-action_net \
--scan_islands 1 \
--coil_name 'Magstim_70mm_Fig8.ccd';
```
