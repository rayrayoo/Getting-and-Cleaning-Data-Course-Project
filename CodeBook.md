This data set is derived from Human Activity Recognition Using Smartphones Data Set at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Details regarding original data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

### From original data to this data set

First, training set and test set from original data were combined into one set. 

Second, for each observation of the original data set, corresponding subject and activity labels were added as variables.

Only measurements of means and stds in the original data were kept in this data set.

Finally for each subject and each activity, measurements of all obersavations were averaged, and only the average values were kept.

### Data dictionary

This data set contains 81 columns, fisrt 2 are activity and subject.

From the 3rd column to the 81th are 2 types of data: 

1) mean and std for the following 33 signals:
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions, so it actually stands for 3 s   ignals. "_" is not included in the column names. 

 tBodyAcc-XYZ
 
 tGravityAcc-XYZ
 
 tBodyAccJerk-XYZ
 
 tBodyGyro-XYZ
 
 tBodyGyroJerk-XYZ
 
 tBodyAccMag
 
 tGravityAccMag
 
 tBodyAccJerkMag
 
 tBodyGyroMag
 
 tBodyGyroJerkMag
 
 fBodyAcc-XYZ
 
 fBodyAccJerk-XYZ
 
 fBodyGyro-XYZ
 
 fBodyAccMag
 
 fBodyAccJerkMag
 
 fBodyGyroMag
 
 fBodyGyroJerkMag

2) Weighted average of the frequency components to obtain a mean frequency,
   denoted as f*meanFreq
   
For meanings of Body, Acc, Jerk..., look up the Details regarding original data part.

Notice every entry is average of multiple observations.