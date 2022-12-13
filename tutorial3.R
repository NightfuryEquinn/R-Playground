rm(list = ls())

# Question 1
# Define test marks of 5 students
testMarks = c(24, 16, 28, 19, 30)

# Define final marks of 5 students
finalMarks = c(55, 28, 40, 66, 59)

# Total marks of 5 students
totalMarks = testMarks + finalMarks
totalMarks


# Question 2
# If equal or greater than 50 marks, TRUE
pass = c(totalMarks >= 50)
pass


# Question 3
# Assign name to totalMarks
names(totalMarks) <- c('Alpha', 'Beta', 'Gamma', 'Delta', 'Eplison')
totalMarks


# Question 4
# Find min, max, mean, median of totalMarks
minTotalMarks = min(totalMarks)
maxTotalMarks = max(totalMarks)
meanTotalMarks = mean(totalMarks)
medianTotalMarks = median(totalMarks)


# Question 5
# Date, month, quarter
todayDate = Sys.Date()
todayDate

currentMonth = months.Date(todayDate)
currentMonth

currentQuarter = quarters.Date(todayDate)
currentQuarter


# Question 6
rounded = round(547.8)
squareRooted = sqrt(9)

targetString <- "abcd"
subString = substr(targetString, 2, 4)

targetString2 <- "Good Morning Ahmad"
splitString = strsplit(targetString2, split = " ")

targetString3 <- "Hello"
countString = nchar(targetString3)


# Question 7
# Factor
data <- c("East", "West", "East", "North", "North", "East", "West", "West", "East", "North")
factored = factor(data)
factored


# Question 8
# Blank Matrix
emptyMatrix = matrix(, nrow = 1, ncol = 1)
emptyMatrix
          

# Question 9
# Create Matrix
matrixData = floor(runif(12, min = 1, max = 100))
matrixData

matriced = matrix(matrixData, nrow = 3, ncol = 4)
matriced


# Question 10
# Create Matrix with Names
matrixData2 = floor(runif(9, min = 10, max = 50))

namedMatriced = matrix(matrixData2, nrow = 3, ncol = 3)

colnames(namedMatriced) <- c("Primary", "Secondary", "Tertiary")
rownames(namedMatriced) <- c("Halo", "Helo", "Hilo")

namedMatriced

