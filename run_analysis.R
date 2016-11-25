setwd("~/R")

#####################################################################
##Step 1 - download and merge the zip file data to create one dataset
#####################################################################


#Step 1.1 - Download the data
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
file_raw <- "raw_data.zip"

download.file(file_url, file_raw)
unzip(file_raw) 

#Step 1.2 - Read the data from the unzipped file
x_train <- read.table("~/R/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("~/R/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("~/R/UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("~/R/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("~/R/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("~/R/UCI HAR Dataset/test/subject_test.txt")

features <- read.table("~/R/UCI HAR Dataset/features.txt")
activity_labels = read.table("~/R/UCI HAR Dataset/activity_labels.txt")

# Step 1.3 - Assign column names (also step 3, descriptive activity names)

colnames(x_train) <- features[,2] 
colnames(x_test) <- features[,2] 

colnames(subject_train) <- "subjectId"
colnames(subject_test) <- "subjectId"

colnames(y_train) <-"activityId"
colnames(y_test) <-"activityId"

colnames(activity_labels) <- c('activityId','activityType')

# Step 1.4 - Bind test and train data
training_data = cbind(y_train,subject_train,x_train)
test_data = cbind(y_test,subject_test,x_test)
data_bind <- rbind(training_data, test_data)


###############################################################
# Step 2 - extract mean and std variables
###############################################################

# Step 2.1 - vector of column names
col_names <- names(data_bind)
mean_std <- grepl("-(mean|std)\\(\\)", features[, 2])
final_data = data_bind[mean_std==TRUE]

################################################################
#step 4 - Use appropriate labels with descriptive variable names
################################################################

names(final_data)<-gsub("^t", "time", names(final_data))
names(final_data)<-gsub("^f", "frequency", names(final_data))
names(final_data)<-gsub("Acc", "Accelerometer", names(final_data))
names(final_data)<-gsub("Gyro", "Gyroscope", names(final_data))
names(final_data)<-gsub("Mag", "Magnitude", names(final_data))
names(final_data)<-gsub("BodyBody", "Body", names(final_data))
names(final_data)<-gsub("mean", "Mean", names(final_data))
names(final_data)<-gsub("std", "Std", names(final_data))

###################################################################
# Step 5 - create at tidy data set
##################################################################
data_tidy<-aggregate(. ~subjectId + activityId, final_data, mean)
data_tidy <-data_tidy[order(data_tidy$subjectId,data_tidy$activityId),]
##Step 3 - Use descriptive Activity names
data_tidy[, 2] <- activity_labels[data_tidy[, 2], 2]
write.table(data_tidy, file = "tidydata.txt", row.names=TRUE, sep='\t')

