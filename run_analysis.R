# LOAD THE DATA FILES
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

activities <- read.table("activity_labels.txt")
features <- read.table("features.txt")

# GET THE INDICIES OF THE MEAN OR STANDARD DEVIATION VARIABLES
filter <- sort(union(grep("mean", features$V2), grep("std", features$V2)))

# CONSTRUCT A NEW DATA FRAME WHICH MERGES BOTH DATA SETS
tidy <- data.frame(c(subject_test$V1, subject_train$V1),
                   c(y_test$V1, y_train$V1),
                   rbind(X_test[filter], X_train[filter]))

# REPLACE THE COLUMN NAMES WITH MORE READABLE NAMES
colnames(tidy) <- c("subject", "activity", gsub("-|\\()", "", as.character(features$V2[filter])))
tidy$activity <- activities$V2[tidy$activity]

# AGGREGATE THE MEAN OF ALL VARIABLES FOR EACH SUBJECT AND ACTIVITY
tidy <- aggregate(. ~ subject + activity, data=tidy, FUN=mean)

# WRITE THE TINY DATA SET TO A FILE
write.table(tidy, file="tidy.txt", row.name=F)