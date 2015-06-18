## Study Design
See file UCIHAR_ReadMe.txt for details on study and raw data

## Data Transformation

Following steps were done to go from raw data to tidy data set of average of each variable

1. downloaded zipped file from web and unzipped it, remaining steps are in R script
2. read in tables
3. added column names from features table to X_test and X_train tables
4. added column names to activity labels table
5. assuming activity and subject tables in perfect alignment with rows in X_ tables, added activity and subject columns to X_tables
6. combined test and train tables into one table
7. created new table from combined table that has just the measurements pertaining to mean and standard deviation, plus the activity and subject columns
8. made column names more readable
9. changed the activity code from integer to more meaningful character description
10. created table of mean of measurements, grouping on subject and activity
11. Wrote result to text file



## Codebook - description of tblTidyCalcs.txt data set
         - average of each variable grouped on subject and activity

 [1] SubjectID                                  Integer Values: 1 to 30                      
 [2] ActivityName                               Char    Values: WALKING, 
                                                        SITTING, STANDING, 
                                                        LAYING, 
                                                        WALKING_DOWNSTAIRS, 
                                                        WALKING_UPSTAIRS       
 [3] Time_BodyAcceleration_Mean_X               Double     
 [4] Time_BodyAcceleration_Mean_Y               Double            
 [5] Time_BodyAcceleration_Mean_Z               Double            
 [6] Time_BodyAcceleration_StdDev_X             Double            
 [7] Time_BodyAcceleration_StdDev_Y             Double            
 [8] Time_BodyAcceleration_StdDev_Z             Double            
 [9] Time_GravityAcceleration_Mean_X            Double            
[10] Time_GravityAcceleration_Mean_Y            Double            
[11] Time_GravityAcceleration_Mean_Z            Double            
[12] Time_GravityAcceleration_StdDev_X          Double            
[13] Time_GravityAcceleration_StdDev_Y          Double            
[14] Time_GravityAcceleration_StdDev_Z          Double            
[15] Time_BodyAccelerationJerk_Mean_X           Double            
[16] Time_BodyAccelerationJerk_Mean_Y           Double            
[17] Time_BodyAccelerationJerk_Mean_Z           Double            
[18] Time_BodyAccelerationJerk_StdDev_X         Double            
[19] Time_BodyAccelerationJerk_StdDev_Y         Double            
[20] Time_BodyAccelerationJerk_StdDev_Z         Double            
[21] Time_BodyAngularVelocity_Mean_X            Double            
[22] Time_BodyAngularVelocity_Mean_Y            Double            
[23] Time_BodyAngularVelocity_Mean_Z            Double            
[24] Time_BodyAngularVelocity_StdDev_X          Double            
[25] Time_BodyAngularVelocity_StdDev_Y          Double            
[26] Time_BodyAngularVelocity_StdDev_Z          Double            
[27] Time_BodyAngularVelocityJerk_Mean_X        Double           
[28] Time_BodyAngularVelocityJerk_Mean_Y        Double           
[29] Time_BodyAngularVelocityJerk_Mean_Z        Double           
[30] Time_BodyAngularVelocityJerk_StdDev_X      Double         
[31] Time_BodyAngularVelocityJerk_StdDev_Y      Double         
[32] Time_BodyAngularVelocityJerk_StdDev_Z      Double         
[33] Time_BodyAccelerationMag_Mean              Double         
[34] Time_BodyAccelerationMag_StdDev            Double         
[35] Time_GravityAccelerationMag_Mean           Double         
[36] Time_GravityAccelerationMag_StdDev         Double         
[37] Time_BodyAccelerationJerkMag_Mean          Double         
[38] Time_BodyAccelerationJerkMag_StdDev        Double         
[39] Time_BodyAngularVelocityMag_Mean           Double         
[40] Time_BodyAngularVelocityMag_StdDev         Double         
[41] Time_BodyAngularVelocityJerkMag_Mean       Double         
[42] Time_BodyAngularVelocityJerkMag_StdDev     Double        
[43] Freq_BodyAcceleration_Mean_X               Double        
[44] Freq_BodyAcceleration_Mean_Y               Double        
[45] Freq_BodyAcceleration_Mean_Z               Double        
[46] Freq_BodyAcceleration_StdDev_X             Double        
[47] Freq_BodyAcceleration_StdDev_Y             Double        
[48] Freq_BodyAcceleration_StdDev_Z             Double        
[49] Freq_BodyAccelerationJerk_Mean_X           Double        
[50] Freq_BodyAccelerationJerk_Mean_Y           Double        
[51] Freq_BodyAccelerationJerk_Mean_Z           Double        
[52] Freq_BodyAccelerationJerk_StdDev_X         Double        
[53] Freq_BodyAccelerationJerk_StdDev_Y         Double        
[54] Freq_BodyAccelerationJerk_StdDev_Z         Double        
[55] Freq_BodyAngularVelocity_Mean_X            Double        
[56] Freq_BodyAngularVelocity_Mean_Y            Double        
[57] Freq_BodyAngularVelocity_Mean_Z            Double        
[58] Freq_BodyAngularVelocity_StdDev_X          Double        
[59] Freq_BodyAngularVelocity_StdDev_Y          Double        
[60] Freq_BodyAngularVelocity_StdDev_Z          Double        
[61] Freq_BodyAccelerationMag_Mean              Double        
[62] Freq_BodyAccelerationMag_StdDev            Double       
[63] Freq_BodyBodyAccelerationJerkMag_Mean      Double        
[64] Freq_BodyBodyAccelerationJerkMag_StdDev    Double        
[65] Freq_BodyBodyAngularVelocityMag_Mean       Double        
[66] Freq_BodyBodyAngularVelocityMag_StdDev     Double        
[67] Freq_BodyBodyAngularVelocityJerkMag_Mean   Double       
[68] Freq_BodyBodyAngularVelocityJerkMag_StdDev Double     