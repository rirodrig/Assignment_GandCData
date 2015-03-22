## Tidy Data Assignment
## Submitted by R. Rodriguez

## Load the dplyr Library
library(plyr)
library(dplyr)
## Set the Working Directory
setwd("C:/Users/GFG4QYT/Documents/SAI/Coursera_Training/Getting and Cleaning Data/Assignment/")

## Load Labels
actlab <- read.table("activity_labels.txt")
feat <- read.table("features.txt")

## Load and Tidy Test Data
testx <- read.table("./test/X_test.txt")
subjtest <- read.table("./test/subject_test.txt")
testy <- read.table("./test/y_test.txt")
names(testx) <- feat[[2]]
test_data <- cbind(testx, subjtest, testy)
colnames(test_data)[562] <- "Subject"
colnames(test_data)[563] <- "ActivityCode"

## Load and Tidy Training Data
trainx <- read.table("./train/X_train.txt")
subjttrain <- read.table("./train/subject_train.txt")
trainy <- read.table("./train/y_train.txt")
names(trainx) <- feat[[2]]
train_data <- cbind(trainx, subjttrain, trainy)
colnames(train_data)[562] <- "Subject"
colnames(train_data)[563] <- "ActivityCode"

## bind Test and Training Data
master <- rbind(test_data, train_data)

## Add the Activity Description (Column 564)
master <- mutate(master,Activity = actlab[ActivityCode, 2])

## Create the final summary table
summary <- select(master, 1:6, 562, 564)

## Rename First 6 Headers for simplicity, Tidy Data
colnames(summary)[1] <- "BodyMeanX"
colnames(summary)[2] <- "BodyMeanY"
colnames(summary)[3] <- "BodyMeanZ"
colnames(summary)[4] <- "BodyStDevX"
colnames(summary)[5] <- "BodyStDevY"
colnames(summary)[6] <- "BodyStDevZ"

## Final Table (Task 5)
final_temp <- group_by(summary, Activity, Subject) 
final <- summarize(final_temp, MeanX = mean(BodyMeanX, na.rm= TRUE), MeanY = mean(BodyMeanY, na.rm= TRUE), MeanZ = mean(BodyMeanZ, na.rm= TRUE), MeanStDevX = mean(BodyStDevX, na.rm= TRUE), MeanStDevY = mean(BodyStDevY, na.rm= TRUE), MeanStDevZ = mean(BodyStDevZ, na.rm= TRUE))
write.table(final, "final.txt", row.name=FALSE)
