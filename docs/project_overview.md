# Simnibs Cifti Tools Overview 

Simnibs cifti tools is an end-to-end standardized toolbox for coil localization informed by individualized functional targets. It is built on top of Simnibs, a tool to simulate electric field propagation in the brain using finite element models (FEM) (Saturnino et al. 2019) as well a pipeline for preprocessing fMRI data (ABCD-HCP, https://github.com/DCAN-Labs/abcd-hcp-pipeline). 

Simnibs-cifti-tools uses the outputs of the ABCD-HCP preprocessed MRI files and a set of coordinates of interest as the target to stimulate.The generated outputs, a FEM, the optimal coil position and orientation, the Electric field projected on the cortex as volume and as a surface, both in native and atlas space are stored in a standardized format. Using this structure enables the pipleine to run multiple jobs in a computer cluster. 

The outputs of this pipeline are optimized coil placements for the desired brain region specified at startup and can be directly uploaded into Brainsight's TMS neuronavigation system (Brainsight, https://brainbox-neuro.com/products/brainsight-tms-navigation). In addition to this there are additional visualization outputs generated to aid in decision making when determining which of the top 3 targets to use.

The toolbox is developed according to the [NMIND initiative](https://www.nmind.org/) coding and documentation practices and is intended to be released as a public repository to facilitate reliable and scalable data analysis as well as planning neuronavigated TMS interventions at the individual level. 
