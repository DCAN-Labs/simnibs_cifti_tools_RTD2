# Cifti to Volume (Atlas and Native)
- Description : Map the content of a cifti file (dscalars, pscalars, dlabels) into a volume file (yes, no white matter) in both atlas space and in native space. White matter would be filled with NaN's. (check if nifti accept NaN's)
This convertion includes cortical and subcortical structures
- Input
    - Mandatory
      - Cifti file , File that contain the values to be mapped into the volume. 
      - Cortical ribbons (pial and white matter, left and right)
      - Subject Volume reference (can be native or atlas, but same as used in the cifti file used as input)
    - Optional
      - Atlas to native transformation matrix
- Outputs : Output volume in same space 

# Volume to Cifti (Atlas and Native)
- Description
- Input
- Output
# Read coordinates from file
# Cifti to table of coordinates with label (i.e. Network label) (Base for Brain_to_coordinate_text)
# Extract brain structures (from aseg, dlabel, to cifti and/or volume)
