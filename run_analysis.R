
# Load plyr

library(dplyr)






# Reading features  

features <- read.table("/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", col.names = c("feature_id","feature_name"))

# Reading activity labels data

activity_lables <- read.table("/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity_name"))


# now reading the test data 

subject_test <- read.table("/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", col.names = "subject_id")

x_test <- read.table("/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", col.names = features[, 2])

y_test <- read.table("/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", col.names = "activity_id")


# reading the trian data

subject_train <- read.table("/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", col.names = "subject_id")

x_train <- read.table("/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", col.names = features[, 2])

y_trian <- read.table("/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", col.names = "activity_id")




# reading is completed, strting now to merges the data sets 

x_all <- rbind(x_test, x_train)

y_all <- rbind(y_test, y_trian)

subj_all <- rbind(subject_test, subject_train)

merged_set <- cbind(x_all, y_all, subj_all)


# now are requested Extract inly measurements mean and STD 

selected_set <- merged_set %>% select(activity_id, subject_id, contains("mean"), contains("std"))



selected_set$activity_id <- activity_lables[selected_set$activity_id, 2]




# I have give descrivptive activity names at the beganing, so going ahead now and make the final tidy data 




final_tidyset <- selected_set %>% group_by (activity_id, subject_id) %>% summarise_all(funs(mean))

write.table(final_tidyset, file ="/Users/musab/Desktop/Coursera/Getting data_week4_assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE )










