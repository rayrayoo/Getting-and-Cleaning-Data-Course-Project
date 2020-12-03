x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")     
testdata <- cbind(y_test, subject_test, x_test)                    #read training set

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainingdata <- cbind(y_train, subject_train, x_train)              #read test set

data <- rbind(trainingdata, testdata)   #merge them into one single data set

datalabels <- read.table("UCI HAR Dataset/features.txt")  #read the names of the variables

names(data) <- c("activity", "subject", datalabels[,2])   #name the columns of our data

mean_stds <- grep("*mean*|*std*", datalabels[,2])   #get the locations of variables that are mean or std

data <- data[, c(1, 2, mean_stds + 2)]      #extract mean and std measurements

names(data) <- names(data) %>% gsub("[^a-zA-z]", "")        #tidy up variable names

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels <- activity_labels[,2] %>% 
                   tolower() %>%
                   gsub("_", "")        #get activity labels and tidy them up

data[["activity"]] <- factor(data[["activity"]], levels = as.character(1:6), labels = activity_labels)

data[["subject"]] <- as.factor(data[["subject"]])      #convert the activity column and the subject column into factors


libraray(dplyr)
data <- as_tibble(data)
averaged_data <- data %>%
                 group_by(activity, subject) %>%
                 summarize(across(where(is.double), mean))    #compute average for each activity and each subject

write.table(averaged_data, "CleanedData.txt", row.names = F)












