# Question 1
# A
# Access data set for data sets (Code method)
data(package = .packages(all.available = TRUE))

data(AirPassengers, package = "datasets")
AirPassengers

# B
# Access data set for ggplot2 (Manual method by checking package at bottom right content)
economics


# Question 2
myData <- scan(file = "C:/Users/User/Documents - Local/Degree/Sem 1/PFDA/R Scripts/tutorial7data.txt")
myData

max(myData)
min(myData)
mean(myData)


# Question 3
# Headers are the row and col names
tomatoData <- read.table("http://www.jaredlander.com/data/TomatoFirst.csv", header = TRUE, sep = ",")
# tomatoData <- read.csv("http://www.jaredlander.com/data/TomatoFirst.csv", header = TRUE, sep = ",")

tomatoData

nrow(tomatoData)
ncol(tomatoData)

View(tomatoData)


# Question 4 
# install.packages("readxl")
# library(readxl)

excelExpData <- read_excel("C:/Users/User/Documents - Local/Degree/Sem 1/PFDA/R Scripts/ExcelExample.xlsx", sheet = 3)
excelExpData


# Question 5
# install.packages("RSQLite")
# library(RSQLite)

driver <- dbDriver("SQLite")
# downloadFile <- download.file("http://www.jaredlander.com/data/diamonds.db", destfile = "C:/Users/User/Documents - Local/Degree/Sem 1/PFDA/R Scripts")
conFile <- dbConnect(driver, "C:/Users/User/Documents - Local/Degree/Sem 1/PFDA/R Scripts/diamonds.db")

diamondsData <- dbGetQuery(conFile, "SELECT * FROM diamonds", stringsAsFactors = FALSE)

head(diamondsData)

tail(diamondsData)

dbListTables(conFile)