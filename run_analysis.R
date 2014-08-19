## This script assumes that you have already downloaded and unzipped the data 
## and have set the directory they are in as the working directory.

## Step 1 Read in and merge data
activities <- read.table("activity_labels.txt")
features <- read.table("features.txt")
subjecttest <- read.table("test/subject_test.txt")
xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/y_test.txt")
subjecttrain <- read.table("train/subject_train.txt")
xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/y_train.txt")
test <- cbind(xtest, subjecttest, ytest)
train <- cbind(xtrain, subjecttrain, ytrain)
set <- rbind(train, test)

## Step 2 Extract mean and st dev measurements
label <- grep("-mean[^Freq]|-std", features$V2)
labels <- c(label, 562:563)
data <- set[,labels]

## Step 3 Name activities
data$V1.2 <- factor(data$V1.2, labels=c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

## Step 4 Label variables
labeller <- as.vector(features$V2[label], mode="character")
labeller <- gsub("BodyBody", "Body", labeller)
labeller1 <- c(labeller, "Subject", "Activity")
names(data) <- labeller1

## Step 5 Average variables for subject and activity
library(reshape2)
melt <- melt(data, id=c("Subject", "Activity"), measure.vars=labeller)
clean <- dcast(melt, Subject + Activity ~ variable, mean)
write.table(clean, file="tidydataset.txt", row.names=FALSE)