# Getting-and-Cleaning-Data-Course-Project

## Extract data that I want

### Analyse original data
    
   As seen in README.txt in the original data file folder, data was divided into training set and test set, and each part was further divided into 3 files--x file recorded actual measurement values with each row being one observation, y file recorded activities corresponding to each observation, and subject file recorded corresponding subject.

### Putting data together
    
   First, I used read.table() to read in x, y(activity), subject in training data, and used cbind to put them into one data frame. And I did the same with test data.
    
   With rbind, put training and test data together.
    
   Variable names were recorded in features file. Read them in, and use them to name the columns of our data. Notice the first 2 columns are activity and subject.
    
### Extract mean and std measurements
    
   Use grep with regular expression on datalabels to get the locations where variable names contain "mean" or "std".
    
   While using these locations as indices to extract wanted data, remember add 2 to each entry because we added "activity" and "subject" columns to data.
    
### Tidy up
    
   Now that variable names seem messy with "-" and "()" in them, use gsub to get rid of them and leave only letters. I choose to not lower-case all names, because the variable names in our data set are often long and complicated, lowering-case all seems to make them even harder to understand.
    
   Note that variable activity in our data set is now an integer vector, while it should be a factor. First, get the labels for the activities from activities_label file, and tidy the labels up so that they do not contain any upper character or "_". Then use the labels to convert the activity column to a factor.
    
   Also convert subject column to factor, but we don't need to give it any labels.
    
   Now we have a tidy data set with only measurements that we care about.
    
    
## Average each variable for each activity and each subject
    
   For this part, load dplyr package and convert our data to data.table with as_tibble function, which makes our analysis much easier.
    
   First, group data by activity and subject. Then use summarize function on grouped data, within summarize function we use across function to 1) specify which columns we want to manipulate and 2) what operation we want perform on each column (average in this case). The result is a tidy table with averages of every variable for each activity and each subject.
    
   Use write.table to write the final result into a txt file called CleanedData.
    