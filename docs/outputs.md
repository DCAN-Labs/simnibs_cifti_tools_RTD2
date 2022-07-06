## Output Folder Structure 
Once a run is completed, all the files will be saved in the folder you defined as output folder (in this example is `/home/example1/Pilottest`). This folder will contain the following subfolders:

```markdown
├── /home/example1  
    ├── Pilottest
        └── SubjectID        
            └── session
                ├── coord_x_y_z
                   └── derivatives
                       └── Atlas
                       └── Native                   
                   ├── Efield
                       └── Cifti
                           └── Atlas
                           └── Native 
                       ├── Surface
                           └── Atlas
                           └── Native                   
                       └── Volume
                           └── Atlas
                           └── Native                  
                   ├── sim
                       └── fsavg_overlays
                       ├── mni_volumes                
                       ├── subject_overlays            
                       └── subject_volumes              
                   └── opt                 
                └── FEM
```
        
## Exploring Outputs 
