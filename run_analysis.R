# Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

if (!require("data.table")) {
  install.packages("data.table")
}

if (!require("reshape2")) {
  install.packages("reshape2")
}

require("data.table")
require("reshape2")

# Load: activity labels
labelakt <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Load: data column names
ciri <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Extract only the measurements on the mean and standard deviation for each measurement.
extract_ciri <- grepl("mean|std", ciri)

# Load and process X_test & y_test data.
Xuji <- read.table("./UCI HAR Dataset/test/X_test.txt")
yuji <- read.table("./UCI HAR Dataset/test/y_test.txt")
mpuji <- read.table("./UCI HAR Dataset/test/subject_test.txt")

names(Xuji) = ciri

# Extract only the measurements on the mean and standard deviation for each measurement.
Xuji = Xuji[,extract_ciri]

# Load activity labels
yuji[,2] = labelakt[yuji[,1]]
names(yuji) = c("Activity_ID", "Activity_Label")
names(mpuji) = "subject"

# Bind data
ujidata <- cbind(as.data.table(mpuji), yuji, Xuji)

# Load and process X_train & y_train data.
xlatih<- read.table("./UCI HAR Dataset/train/X_train.txt")
ylatih <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_latihan <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(xlatih) = ciri

# Extract only the measurements on the mean and standard deviation for each measurement.
xlatih= xlatih[,extract_ciri]

# Load activity data
ylatih[,2] = labelakt[ylatih[,1]]
names(ylatih) = c("Activity_ID", "Activity_Label")
names(subject_latihan) = "subject"

# Bind data
latihdata <- cbind(as.data.table(subject_latihan), ylatih, xlatih)

# Merge test and train data
data = rbind(ujidata, latihdata)

id_labels   = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data      = melt(data, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function
tidy_data   = dcast(melt_data, subject + Activity_Label ~ variable, mean)

write.table(tidy_data, file = "./tidy_data.txt")

