Human Activity Recognition Using Smartphones Dataset
-----------------------------------------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


### For each record it is provided:

- An identifier of the subject who carried out the experiment.
- The activity that the subject performed
- The mean of the 561 measurements for each subject and activity


### The dataset includes the following files:

- 'README.md': procedure explanation and codebook

- 'run_analysis.R': an R Script that transforms and makes the data tidy

- 'tidy.txt': Shows the mean of every measurement for each subject and activity


### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



### Steps For The run_analysis.R Script:

1. Load the Data files into memory
2. Get the indicies of the mean and standard deviation measurements and use it to filter out only these elements
3. Construct a new Data Frame which merges both the "test" and "training" data sets
4. Replace the column names with more descriptive and easily readable names
5. Calculate the mean of all measurements for each subject and activity
6. Write the new tidy dataset to a file


### Codebook for tinydata.txt

###### subject
	definition: represents the number of the person who was being evaluated  
	type: integer  
	range: 1, 30  
<br />
###### activity
	definition: describes the type of activity that the subject was performing while the data was collected  
	type: factor  
	range:  
		WALKING  
		WALKING_UPSTAIRS  
		WALKING_DOWNSTAIRS  
		SITTING  
		STANDING  
		LAYING  
<br />
###### measurements
	definiiton: each column represents the mean value of each measurement for every subject and every activity  
	type: numeric  
	range: -1, 1
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
