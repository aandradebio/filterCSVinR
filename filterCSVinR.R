# Load necessary libraries
library(data.table)
library(stringr)

# Set a random seed for reproducibility
set.seed(12345)

# Get command line arguments
args <- commandArgs(trailingOnly = TRUE)

# Read the list of headers to remove from a file
headers <- args[1]

# Get a list of files with the pattern ".csv.gz" in their names
files <- list.files(pattern = "\\.csv\\.gz$", full.names = TRUE)

# Read the headers to remove from the provided file
partial_headers_to_remove <- fread(headers)

# Loop through each file
for (file in files) {
  # Define input and output file paths
  input_file <- file
  output_file <- sub("\\.csv\\.gz$", "_filtered.csv.gz", file)
  
  # Read the CSV.gz file using data.table
  data <- fread(input_file)
  
  # Loop through each header to remove
  for (header in partial_headers_to_remove$V1) {
    # Check if the header is present in the data
    if (header %in% names(data)) {
      # Remove the column with the matching header
      data <- data[, !names(data) %in% header, with = FALSE]
    }
  }
  
  # Save the filtered data as a new CSV.gz file
  fwrite(data, output_file, quote = FALSE)
  
  # Print a message indicating the file has been processed
  cat("Processed:", input_file, "\n")
}
