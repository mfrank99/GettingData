library(plyr)
library(dplyr)

#Get header, Activity Labels
data_header <- read.table("features.txt",col.names = c("id","variable"))
data_header$variable <- gsub(',','_',data_header$variable)
data_header$variable <- gsub("\\()","",data_header$variable)
data_header
data_activities <- read.table("activity_labels.txt",col.names = c("id","activity"))

#Get Training Data
train_data <- read.table("train/X_train.txt",col.names=data_header$variable)#,check.names = FALSE)
#Get Subject data
train_subjects <- read.table("train/subject_train.txt",col.names = "subject")
#Get Activity Data
train_activity <- read.table("train/y_train.txt",col.names = "id")
train_activity <- merge(train_activity,data_activities)
#train_activity <- merge(train_activity,data_activities)[,2] #Returns only the text column

#Merge Subject, Activity, Training Data
my_data1 <- cbind(train_subjects,select(train_activity,activity),select(train_data,contains("std"),contains("mean")))
remove(train_data,train_activity,train_subjects)

#Get Test, Subject, Activity Data
#Get testing Data
test_data <- read.table("test/X_test.txt",col.names=data_header$variable)#,check.names = FALSE)
#Get Subject data
test_subjects <- read.table("test/subject_test.txt",col.names = "subject")
#Get Activity Data
test_activity <- read.table("test/y_test.txt",col.names = "id")
test_activity <- merge(test_activity,data_activities)
#test_activity <- merge(test_activity,data_activities)[,2] #Returns only the text column

#Merge data
my_data2 <- cbind(test_subjects,select(test_activity,activity),select(test_data,contains("std"),contains("mean")))
remove(test_data,test_activity,test_subjects)

#Combine Train and Test data
my_data <- rbind(my_data1,my_data2)
remove(my_data1,my_data2)

#Get Averages by Activity and Subject
my_summary <- my_data %>% group_by(subject,activity) %>% summarise_each(funs(mean)) #%>% arrange(activity,subject)
my_summary <- my_summary %>% arrange(activity,subject)
data.frame(my_summary)

write.table(my_data,"tidy_data.txt",sep = ",",row.names = FALSE)
write.table(my_summary,"tidy_summary.txt",sep = ",",row.names = FALSE)

