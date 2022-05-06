# Simnibs Cifti Tools Overview 

Simnibs cifti tools is an end-to-end standardized toolbox for coil localization informed by individualized functional targets. It is built on top of Simnibs, a tool to simulate electric field propagation in the brain using finite element models (FEM) (Saturnino et al. 2019) as well a pipeline for preprocessing fMRI data (ABCD-HCP, https://github.com/DCAN-Labs/abcd-hcp-pipeline). 

Simnibs-cifti-tools uses the outputs of the ABCD-HCP preprocessed MRI files and a set of coordinates of interest as the target to stimulate.The generated outputs, a FEM, the optimal coil position and orientation, the Electric field projected on the cortex as volume and as a surface, both in native and atlas space are stored in a standardized format. Using this strcture enables the pipleine to run multiple jobs in a computer cluster. 

The toolbox is developed according to the coding and documentation practices (NMIND initiative, https://www.nmind.org/) and is intended to be released as a public repository to facilitate reliable and scalable data analysis as well as planning neuronavigated TMS interventions at the individual level. 
