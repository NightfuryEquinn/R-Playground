# Import csv file
irisData <- read.table("C:/Users/User/Documents - Local/Degree/Sem 1/PFDA/R Scripts/IRIS.csv", header = FALSE, sep = ",")

# Rename header
colnames(irisData) <- c("Sepal_Length", "Sepal_Width", "Petal_Length", "Petal_Width", "Species")

irisData

# View Top 10 Data
head(irisData, n = 10)

# View Last 15 Data
tail(irisData, n = 15)

# Check data structure and data type of each columns
class(irisData)
str(irisData)

# Identify imported data size
length(irisData)

ncol(irisData)
nrow(irisData)

object.size(irisData)

# Filter by column name
# Display species
irisData[, "Species", drop = FALSE]

# Petal Length > 1.5 and Petal Width > 0.5
irisData[irisData$Petal_Length > 1.5 & irisData$Petal_Width > 0.5, ]

# Sepal Length > 6.2 and Sepal Width > 1.0
irisData[irisData$Sepal_Length > 6.2 & irisData$Sepal_Width > 1.0, ]

# Find minimum sepal width
min(irisData$Sepal_Width)

# Find maximum sepal width
max(irisData$Sepal_Width)

# Find summary
summary(irisData)

# Find petal length > 1.5 and petal width > 0.5 and species of setosa
criteriaH1 <- irisData$Petal_Length > 1.5 & irisData$Petal_Width > 0.5 & irisData$Species == "Iris-setosa"

subset(irisData, criteriaH1)

# Find sepal length > 6.2 and sepal width > 1.0 and species of versicolor
criteriaH2 <- irisData$Sepal_Length > 6.2 & irisData$Sepal_Width > 1.0 & irisData$Species == "Iris-versicolor"

subset(irisData, criteriaH2)

# Find species of versicolor and sepal length <= 1.5
criteriaH3 <- irisData$Sepal_Length <= 1.5 & irisData$Species == "Iris-versicolor"

subset(irisData, criteriaH3)


