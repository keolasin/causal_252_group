# Data Set

## Download

Download the data to `data` folder from: https://www.nber.org/research/data/linked-birthinfant-death-cohort-data

##Process to get 5, 10, and 25 percent samples
Given the size constraints of the data and the desired computation, we created 5, 10, and 25 percent samples in this code. 

5 percent - ~200k births
10 percent - ~400k births
25 percent - ~1M births

## Import

Import the data using `read_csv(here("data/file_name.csv"), col_names = TRUE)`
