# filterCSVinR
## Overview
This script is designed to remove specific rows from one or more CSV files with the ".csv.gz" extension. It takes a list of headers to remove and processes each CSV file, creating new filtered CSV files with the specified columns removed. It was created to handle multiple feature matrices that I have created from multifasta files. 

## Prerequisites
Before using this script, ensure you have the following prerequisites installed:

- R (https://www.r-project.org/)
- R libraries: data.table, stringr

You can install the required R libraries using the following commands:

```R
install.packages("data.table")
install.packages("stringr")
```

Run this script as follows:

```Rscript remove_columns.R headers.txt```


