### Steps For The run_analysis.R Script

1. Load the Data files into memory
2. Get the indicies of the mean and standard deviation measurements and use it to filter out only these elements
3. Construct a new Data Frame which merges both the "test" and "training" data sets
4. Replace the column names with more descriptive and easily readable names
5. Calculate the mean of all measurements for each subject and activity
6. Write the new tidy dataset to a file


### Codebook for tinydata.txt

subject
	definition: represents the number of the person who was being evaluated
	type: integer
	range: 1-30
	
activity
	definition: describes the type of activity that the subject was performing while the data was collected
	type: factor
	range:
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

*measurements*
	definiiton: each column represents the mean value of each measurement for every subject and every activity
	type: numeric
	range:
	column names:
		tBodyAccmeanX
		tBodyAccmeanY
		tBodyAccmeanZ
		tBodyAccstdX
		tBodyAccstdY
		tBodyAccstdZ
		tGravityAccmeanX
		tGravityAccmeanY
		tGravityAccmeanZ
		tGravityAccstdX
		tGravityAccstdY
		tGravityAccstdZ
		tBodyAccJerkmeanX
		tBodyAccJerkmeanY
		tBodyAccJerkmeanZ
		tBodyAccJerkstdX
		tBodyAccJerkstdY
		tBodyAccJerkstdZ
		tBodyGyromeanX
		tBodyGyromeanY
		tBodyGyromeanZ
		tBodyGyrostdX
		tBodyGyrostdY
		tBodyGyrostdZ
		tBodyGyroJerkmeanX
		tBodyGyroJerkmeanY
		tBodyGyroJerkmeanZ
		tBodyGyroJerkstdX
		tBodyGyroJerkstdY
		tBodyGyroJerkstdZ
		tBodyAccMagmean
		tBodyAccMagstd
		tGravityAccMagmean
		tGravityAccMagstd
		tBodyAccJerkMagmean
		tBodyAccJerkMagstd
		tBodyGyroMagmean
		tBodyGyroMagstd
		tBodyGyroJerkMagmean
		tBodyGyroJerkMagstd
		fBodyAccmeanX
		fBodyAccmeanY
		fBodyAccmeanZ
		fBodyAccstdX
		fBodyAccstdY
		fBodyAccstdZ
		fBodyAccmeanFreqX
		fBodyAccmeanFreqY
		fBodyAccmeanFreqZ
		fBodyAccJerkmeanX
		fBodyAccJerkmeanY
		fBodyAccJerkmeanZ
		fBodyAccJerkstdX
		fBodyAccJerkstdY
		fBodyAccJerkstdZ
		fBodyAccJerkmeanFreqX
		fBodyAccJerkmeanFreqY
		fBodyAccJerkmeanFreqZ
		fBodyGyromeanX
		fBodyGyromeanY
		fBodyGyromeanZ
		fBodyGyrostdX
		fBodyGyrostdY
		fBodyGyrostdZ
		fBodyGyromeanFreqX
		fBodyGyromeanFreqY
		fBodyGyromeanFreqZ
		fBodyAccMagmean
		fBodyAccMagstd
		fBodyAccMagmeanFreq
		fBodyBodyAccJerkMagmean
		fBodyBodyAccJerkMagstd
		fBodyBodyAccJerkMagmeanFreq
		fBodyBodyGyroMagmean
		fBodyBodyGyroMagstd
		fBodyBodyGyroMagmeanFreq
		fBodyBodyGyroJerkMagmean
		fBodyBodyGyroJerkMagstd
		fBodyBodyGyroJerkMagmeanFreq

		
### Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 