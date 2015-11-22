# GettingData
Project Submission for Getting and Cleaning Data

Code Book
=================

run_analysis.R

Process:
1. Gets the variable names from Features.txt, storing in data_header data frame.
2. Strip charachters which cause conflicts in variable names: "," and "()"
3. Read the list of activity names, storing in data_activities
4. Get training data set, storing in train_data, using data_header for column names.
5. Get training subject list, storing in train_subjects
6. Get training activities,  storing "id" and activity name in train_activities.
7. Merge subject id, activity name, and training observations, storing in data frame: my_data1
8. Repeat steps 4-6 storing in test_data, test_subjects, test_activity.
9. Merge subject id, activity name, and test observations, storing in data frame: my_data2
10. Merge training and testing data, storing in data frame: my_data
11. Calculate averages by subject and activity, using dplyr, storing in my_summary
12. Write my_data to "tidy_data.txt"
13. Write my_summary to "tidy_summary.txt"


Features
=================

The features selected for this database come from the accelerometer and 
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain 
signals (prefix 't' to denote time) were captured at a constant rate of 50 
Hz. Then they were filtered using a median filter and a 3rd order low pass 
Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and 
gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were 
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and 
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals 
were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, 
tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these 
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate 
frequency domain signals). 

These signals were used to estimate variables of the feature vector for 
each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

==================
Added to data set from original
subject		The id of the test subject creating the observations
activity	The activity name for each activity being observed
==================

tBodyAcc.std.XYZ
tGravityAcc.std.XYZ
tBodyAccJerk.std.XYZ
tBodyGyro.std.XYZ
tBodyGyroJerk.std.XYZ
tBodyAccMag.std
tGravityAccMag.std
tBodyAccJerkMag.std
tBodyGyroMag.std
tBodyGyroJerkMag.std
fBodyAcc.std.XYZ
fBodyAccJerk.std.XYZ
fBodyGyro.std.XYZ
fBodyAccMag.std
fBodyBodyAccJerkMag.std
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.std
tBodyAcc.mean.XYZ
tGravityAcc.mean.XYZ
tBodyAccJerk.mean.XYZ
tBodyGyro.mean.XYZ
tBodyGyroJerk.mean.XYZ
tBodyAccMag.mean
tGravityAccMag.mean
tBodyAccJerkMag.mean
tBodyGyroMag.mean
tBodyGyroJerkMag.mean
fBodyAcc.mean.XYZ
fBodyAcc.meanFreq.XYZ
fBodyAccJerk.mean.XYZ
fBodyAccJerk.meanFreq.XYZ
fBodyGyro.mean.XYZ
fBodyGyro.meanFreq.XYZ
fBodyAccMag.mean
fBodyAccMag.meanFreq
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.meanFreq
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.meanFreq
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.meanFreq
angle.tBodyAccMean_gravity.
angle.tBodyAccJerkMean._gravityMean.
angle.tBodyGyroMean_gravityMean.
angle.tBodyGyroJerkMean_gravityMean.
angle.X_gravityMean.
angle.Y_gravityMean.
angle.Z_gravityMean.
