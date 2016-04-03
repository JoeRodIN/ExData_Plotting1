## ASSUMPTION: Zip file of data has been downloaded, 
##  unzipped, and placed in current working directory 

## if not already loaded from this script, load it
## and create the variable being checked for
if(!exists('loadData_R')) {

    loadData_R <- TRUE
    
    ## Needed to filter data to what is needed to create plots
    if (!exists("sqldf")) {
        install.packages("sqldf")
    }
    library(sqldf)
    
    ## Loads only those rows dated 1/2/2007 and 2/2/2007 (day/month/year)
    data2 <- read.csv.sql("household_power_consumption.txt", sep = ";", header=TRUE, sql = "select * from file where Date == '1/2/2007' or Date == '2/2/2007'" )

}