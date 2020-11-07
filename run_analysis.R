# Create directory
if(!file.exists("data")) {dir.create("data")}

# Download dataset
file url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/Dataset.zip", method = "curl")
dateDownloaded <- date()

# Unzip dataset
unzip(zipfile="./data/Dataset.zip",exdir="./data")

# R script
# 1. Merge the training and the test sets to create one set

# Read training set table
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Read test set table
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Read features table
features <- read.table('./data/UCI HAR Dataset/features.txt')

# Read activity lables table
activity_labels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

# Merge training set
merged_train <- cbind(x_train, y_train, subject_train)

# Merge test set
merged_test <- cbind(x_test, y_test, subject_test)

# Merge training and test sets
train_and_test <- rbind (merged_train, merged_test)

# 2. Extract only the measurements on the mean and standard deviation for each measurement
mean_and_stdev <- 



