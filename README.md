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

## Usage

1) Create a text file containing a list of headers to remove. Each header should be on a separate line. The header file should be formatted as:

```
Header1
Header2
Header3
```
The header could be any string pattern. In my study, I use sequence headers. 

2) Run the script from the command line using the following command:

```Rscript filterCSVinR.R headers.txt```

3) The script will process all CSV files in the current directory with the ".csv.gz" extension.

4) Filtered CSV files will be saved with "_filtered.csv.gz" appended to the original filenames.

   The script will remove rows containing "Header1," "Header2," and "Header3" from all ".csv.gz" files in the current directory and save the filtered files with "_filtered.csv.gz" appended to their names.

## Author
Amanda Araújo Serrão de Andrade
aandradebio@gmail.com

