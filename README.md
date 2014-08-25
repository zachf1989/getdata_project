Human Activity Recognition Using Smartphones Dataset
-----------------------------------------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


### For each record it is provided:

- An identifier of the subject who carried out the experiment.
- The activity that the subject performed
- The mean of the 561 measurements for each subject and activity


### The dataset includes the following files:

- 'README.md': procedure explanation

- 'CodeBook.md': explanation of variables used

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
