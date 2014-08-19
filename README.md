This repo contains the following scripts:  

run_analysis.R

run_analysis.R requires the reshape2 R package.

In order, run_analysis.R:  

1. Reads in all the .txt files required and merges them into one data frame  
2. Subsets the data to only include the mean and standard deviation columns for each variable.  
3. Converts the number codes for the activities to the names of the activities.  
4. Labels each of the columns with the variable name.  
5. Creates a new table where the mean of each variable is calculated, split by subject ID and activity and writes this table to a text file.

In Step 2, only columns where the variable names contained "-mean()" or "-std()" were included. There are some other columns where the variable name ends in "...Mean" but these columns were not included as they did not have a corresponding standard deviation.

The outputted .txt file will be a space delimited file and should be read into R with the "headers" argument set to "TRUE" and "check.names" set to "FALSE".

This repo also contains CodeBook.md, which explains who the data were created by, the experimental design, how the data were collected and processed by the initial study group, which variables are included in the final data set, what each variable name means and how the data are transformed by the run_analysis.R script.
