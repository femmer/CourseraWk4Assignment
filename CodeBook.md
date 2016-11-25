#Data in tidydata.txt (data_tidy varible in the script)

## Variables
Variables are either begin with time (time domain) or frequency (frequency domain)

There is a total of 68 columns in this data set. 
Each row contains data related to 1 activity for a certain person.

There is data for 30 people.

Each row contains data for 66 variables.




 [1] "subjectId"                                         
 [2] "activityId"                                        
 [3] "timeBodyAccelerometer-Mean()-X"                    
 [4] "timeBodyAccelerometer-Mean()-Y"                    
 [5] "timeBodyAccelerometer-Mean()-Z"                    
 [6] "timeBodyAccelerometer-Std()-X"                     
 [7] "timeBodyAccelerometer-correlation()-X,Z"           
 [8] "timeBodyAccelerometer-correlation()-Y,Z"           
 [9] "timeGravityAccelerometer-Mean()-X"                 
[10] "timeGravityAccelerometer-Mean()-Y"                 
[11] "timeGravityAccelerometer-Mean()-Z"                 
[12] "timeGravityAccelerometer-Std()-X"                  
[13] "timeGravityAccelerometer-correlation()-X,Z"        
[14] "timeGravityAccelerometer-correlation()-Y,Z"        
[15] "timeBodyAccelerometerJerk-Mean()-X"                
[16] "timeBodyAccelerometerJerk-Mean()-Y"                
[17] "timeBodyAccelerometerJerk-Mean()-Z"                
[18] "timeBodyAccelerometerJerk-Std()-X"                 
[19] "timeBodyAccelerometerJerk-correlation()-X,Z"       
[20] "timeBodyAccelerometerJerk-correlation()-Y,Z"       
[21] "timeBodyGyroscope-Mean()-X"                        
[22] "timeBodyGyroscope-Mean()-Y"                        
[23] "timeBodyGyroscope-Mean()-Z"                        
[24] "timeBodyGyroscope-Std()-X"                         
[25] "timeBodyGyroscope-correlation()-X,Z"               
[26] "timeBodyGyroscope-correlation()-Y,Z"               
[27] "timeBodyGyroscopeJerk-Mean()-X"                    
[28] "timeBodyGyroscopeJerk-Mean()-Y"                    
[29] "timeBodyGyroscopeJerk-Mean()-Z"                    
[30] "timeBodyGyroscopeJerk-Std()-X"                     
[31] "timeBodyGyroscopeJerk-correlation()-X,Z"           
[32] "timeBodyGyroscopeJerk-correlation()-Y,Z"           
[33] "timeBodyAccelerometerMagnitude-arCoeff()3"         
[34] "timeBodyAccelerometerMagnitude-arCoeff()4"         
[35] "timeGravityAccelerometerMagnitude-arCoeff()3"      
[36] "timeGravityAccelerometerMagnitude-arCoeff()4"      
[37] "timeBodyAccelerometerJerkMagnitude-arCoeff()3"     
[38] "timeBodyAccelerometerJerkMagnitude-arCoeff()4"     
[39] "timeBodyGyroscopeMagnitude-arCoeff()3"             
[40] "timeBodyGyroscopeMagnitude-arCoeff()4"             
[41] "timeBodyGyroscopeJerkMagnitude-arCoeff()3"         
[42] "timeBodyGyroscopeJerkMagnitude-arCoeff()4"         
[43] "frequencyBodyAccelerometer-Mean()-X"               
[44] "frequencyBodyAccelerometer-Mean()-Y"               
[45] "frequencyBodyAccelerometer-Mean()-Z"               
[46] "frequencyBodyAccelerometer-Std()-X"                
[47] "frequencyBodyAccelerometer-bandsEnergy()-1,24"     
[48] "frequencyBodyAccelerometer-bandsEnergy()-25,48"    
[49] "frequencyBodyAccelerometerJerk-Mean()-X"           
[50] "frequencyBodyAccelerometerJerk-Mean()-Y"           
[51] "frequencyBodyAccelerometerJerk-Mean()-Z"           
[52] "frequencyBodyAccelerometerJerk-Std()-X"            
[53] "frequencyBodyAccelerometerJerk-bandsEnergy()-1,24" 
[54] "frequencyBodyAccelerometerJerk-bandsEnergy()-25,48"
[55] "frequencyBodyGyroscope-Mean()-X"                   v
[56] "frequencyBodyGyroscope-Mean()-Y"                   
[57] "frequencyBodyGyroscope-Mean()-Z"                   
[58] "frequencyBodyGyroscope-Std()-X"                    
[59] "frequencyBodyGyroscope-bandsEnergy()-1,24"         
[60] "frequencyBodyGyroscope-bandsEnergy()-25,48"        
[61] "frequencyBodyAccelerometerMagnitude-skewness()"    
[62] "frequencyBodyAccelerometerMagnitude-kurtosis()"    
[63] "frequencyBodyAccelerometerJerkMagnitude-skewness()"
[64] "frequencyBodyAccelerometerJerkMagnitude-kurtosis()"
[65] "frequencyBodyGyroscopeMagnitude-skewness()"        
[66] "frequencyBodyGyroscopeMagnitude-kurtosis()"        
[67] "angle(Y,gravityMean)"                              
[68] "angle(Z,gravityMean)"      

## Activities

activityId       activityType

         1            WALKING
         
         2   WALKING_UPSTAIRS
         
         3 WALKING_DOWNSTAIRS
         
         4            SITTING

         5           STANDING
         
         6             LAYING
