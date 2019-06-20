features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)

Sbj<-rbind(subject_train, subject_test)
Merged<-cbind(Sbj, Y, X)
TdData <- Merged %>% select(subject, code, contains("mean"), contains("std"))

names(TdData)[2] = "activity"
names(TdData)<-gsub("Acc", "Accelerometer", names(TdData))
names(TdData)<-gsub("Gyro", "Gyroscope", names(TdData))
names(TdData)<-gsub("BodyBody", "Body", names(TdData))
names(TdData)<-gsub("Mag", "Magnitude", names(TdData))
names(TdData)<-gsub("^t", "Time", names(TdData))
names(TdData)<-gsub("^f", "Frequency", names(TdData))
names(TdData)<-gsub("tBody", "TimeBody", names(TdData))
names(TdData)<-gsub("-mean()", "Mean", names(TdData), ignore.case = TRUE)
names(TdData)<-gsub("-std()", "STD", names(TdData), ignore.case = TRUE)
names(TdData)<-gsub("-freq()", "Frequency", names(TdData), ignore.case = TRUE)
names(TdData)<-gsub("angle", "Angle", names(TdData))
names(TdData)<-gsub("gravity", "Gravity", names(TdData))

LastData <- TdData %>%
    group_by(subject, activity) %>%
    summarise_all(list(~mean))
write.table(LastData, "LastData.txt", row.name=FALSE)
