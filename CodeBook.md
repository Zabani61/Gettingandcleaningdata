# *Getting Data and Cleaning Data* course project code book

 
A codebook is a type of document used for gathering and storing codes

## Step of Analysis

The analysis script, `run_analysis.R` reads in the processed experiment data and performs a number of steps to get it into summary form.

The script, `run_analysis.R` reads in the process experimental data and takes a few steps to get it in summary form.

1. Both tests and processed training datsets are read and combined into one data frame.
2.The data columns are then named after the `features.txt` file
3.Columns that contain a mean or standard deviation are selected from the dataset, while the other columns of measurement are excluded from the other analysis.
4.Activity identifier is replaced with an activity label based on `activity_labels.txt` file.
5.Invalid characters (`()` and `-` in this case) deleted from the column name. Also, the `BodyBody` duplicate phrase in some column names is edited and replaced with` Body`.
6.Data is then collected by subject and activity, and the mean is calculated for each measurement 
7.Lastly, the summary dataset is written to the file, `run_data_summary.txt`.
8.Each row in `run_analysis.R` is commented. Refer to the file for more information about this process.


## Variable Columns in output file

The variable columns names,labels, codes and format included in the output file are listed below:
example,
 a. subject_id - The identification code  of the experiment participant.
 b. activity_labels - The name of the activity that the measurements correspond to, like `LAYING` or `WALKING`.

All of the following fields represent the mean of recorded data points for the given subject and activity. 

  - tBodyAcc_mean_X
  - tBodyAcc_mean_Y
  - tBodyAcc_mean_Z
  - tGravityAcc_mean_X
  - tGravityAcc_mean_Y
  - tGravityAcc_mean_Z
  - tBodyAccJerk_mean_X
  - tBodyAccJerk_mean_Y
  - tBodyAccJerk_mean_Z
  - tBodyGyro_mean_X
  - tBodyGyro_mean_Y
  - tBodyGyro_mean_Z
  - tBodyGyroJerk_mean_X
  - tBodyGyroJerk_mean_Y
  - tBodyGyroJerk_mean_Z
  - tBodyAccMag_mean
  - tGravityAccMag_mean
  - tBodyAccJerkMag_mean
  - tBodyGyroMag_mean
  - tBodyGyroJerkMag_mean
  - fBodyAcc_mean_X
  - fBodyAcc_mean_Y
  - fBodyAcc_mean_Z
  - fBodyAccJerk_mean_X
  - fBodyAccJerk_mean_Y
  - fBodyAccJerk_mean_Z
  - fBodyGyro_mean_X
  - fBodyGyro_mean_Y
  - fBodyGyro_mean_Z
  - fBodyAccMag_mean
  - fBodyAccJerkMag_mean
  - fBodyGyroMag_mean
  - fBodyGyroJerkMag_mean
  - tBodyAcc_std_X
  - tBodyAcc_std_Y
  - tBodyAcc_std_Z
  - tGravityAcc_std_X
  - tGravityAcc_std_Y
  - tGravityAcc_std_Z
  - tBodyAccJerk_std_X
  - tBodyAccJerk_std_Y
  - tBodyAccJerk_std_Z
  - tBodyGyro_std_X
  - tBodyGyro_std_Y
  - tBodyGyro_std_Z
  - tBodyGyroJerk_std_X
  - tBodyGyroJerk_std_Y
  - tBodyGyroJerk_std_Z
  - tBodyAccMag_std
  - tGravityAccMag_std
  - tBodyAccJerkMag_std
  - tBodyGyroMag_std
  - tBodyGyroJerkMag_std
  - fBodyAcc_std_X
  - fBodyAcc_std_Y
  - fBodyAcc_std_Z
  - fBodyAccJerk_std_X
  - fBodyAccJerk_std_Y
  - fBodyAccJerk_std_Z
  - fBodyGyro_std_X
  - fBodyGyro_std_Y
  - fBodyGyro_std_Z
  - fBodyAccMag_std
  - fBodyAccJerkMag_std
  - fBodyGyroMag_std
  - fBodyGyroJerkMag_std

