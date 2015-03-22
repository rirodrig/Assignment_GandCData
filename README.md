README
# Assignment_GandCData
Assignment  - Getting and Cleaning Data

There is only one script that was created for this assignment which is called "run_analysis.R"

This script start but loadling the ply libraries in Lines 5 and 6
Then, the script sets the workind directory.
Next, the scrip loads the activity labels and feature labels in the following data frames:
1) actlab
2) feat

In lines 15 to 21, the script loads and tidy the test data.
The data frames used for this are:
testx
subjtest
testy
test_data (which is the tidy table)

Then, in lines 23 to 30, the script loads and tidy the training data.
The following are the dataframes used:
trainx
subjttrain
trainy
names
train_data(which is the tidy table)

Line 33 binds both test and training data.

Lastly, lines 35 to 52 mutates the table with an Activity Description and summarizes the mean for the first 6 columns.
These data is grouped by the Activity description and the Subject.

The name of the summarized data frame is "final"; this table is exported to a txt file called "final.txt" using the write.table command.

Thank you.

# CODEBOOK (FOR FINAL.TXT FILE)
# Column 1 = BodyMeanX: Mean for X
# Column 2 = BodyMeanY: Mean for Y
# Column 3 = BodyMeanZ: Mean for Z
# Column 4 = BodyStDevX: Std. Deviation for X
# Column 5 = BodyStDevY: Std. Deviation for Y
# Column 6 = BodyStDevZ : Std. Deviation for Z
# Column 7 = Subject: Subject Number
# Column 8 = Activity: Activity Description
