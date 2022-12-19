rm(list = ls())

# Matrix
# Question 1
# A
# Generate random number with runif()
firstMatrix = matrix(c(floor(runif(12, min = 10, max = 50))), nrow = 4, ncol = 3)
secondMatrix = matrix(c(floor(runif(12, min = 1, max = 10))), nrow = 4, ncol = 3)

firstMatrix
secondMatrix

firstMatrix + secondMatrix
firstMatrix - secondMatrix
firstMatrix * secondMatrix
firstMatrix / secondMatrix

# B
# Access elements in matrix
# 2nd row and 3rd
firstMatrix[2, 3]
firstMatrix[3, ]
firstMatrix[, 1]

# C
# Multiply element in matrix
firstMatrix[2, 3] * firstMatrix[1, 2]


# Question 2
alphaMatrix = matrix(c(floor(runif(12, min = 10, max = 50))), nrow = 3, ncol = 4)
betaMatrix = matrix(c(floor(runif(20, min = 10, max = 50))), nrow = 5, ncol = 4)

alphaMatrix
betaMatrix

rbindMatrix = rbind(alphaMatrix, betaMatrix)
rbindMatrix


# Question 3
alphaMatrix2 = matrix(c(floor(runif(12, min = 10, max = 50))), nrow = 3, ncol = 4)
betaMatrix2 = matrix(c(floor(runif(6, min = 10, max = 50))), nrow = 3, ncol = 2)

alphaMatrix2
betaMatrix2

cbindMatrix = cbind(alphaMatrix2, betaMatrix2)
cbindMatrix


# Question 4
# Find minimum and maximum of matrix
minMaxMatrix = matrix(c(floor(runif(9, min = 10, max = 50))), nrow = 3, ncol = 3)

minMaxMatrix

min(minMaxMatrix)
max(minMaxMatrix)


# Question 5
# Find the row and col of the minimum and maximum of matrix
maxElement = which(minMaxMatrix == max(minMaxMatrix), arr.ind = TRUE)
minElement = which(minMaxMatrix == min(minMaxMatrix), arr.ind = TRUE)

minMaxMatrix[maxElement]
maxElement

minMaxMatrix[minElement]
minElement


# Array
# Question 1
matrix1 = matrix(c(floor(runif(9, min = 10, max = 50))), nrow = 3, ncol = 3)
matrix2 = matrix(c(floor(runif(9, min = 10, max = 50))), nrow = 3, ncol = 3)

array = array(c(matrix1, matrix2), dim = c(3, 3, 2))

array

array[2, , 2]
array[3, 3, 1]


# Question 2
dimVector <- c(floor(runif(24, min = 1, max = 90)))

dim(dimVector) <- c(4, 2, 3)

dimVector


# Data Frames
# Question 1
# Empty Data Frames
df = data.frame()

df


# Question 2
studentData <- data.frame(
  student_name = c("Kimiko", "Nishiko", "Yumiko", "Yasuo"),
  student_id = c(1:4),
  student_gender = c("Female", "Female", "Female", "Male"),
  student_course = c("IT", "BIS", "IT", "CS")
)

studentData


# Question 3
data.frame(studentData $ student_name)


# Question 4
# Extract first two rows
studentData[1:2]


# Question 5
# Add a new column
student_grade = c(54, 86, 75, 93)
updatedStudentData <- cbind(studentData, student_grade)

updatedStudentData


# Question 6
# Add a new row
new_student = c("Yone", 5, "Male", "BIS", 45)

updatedStudentData[nrow(updatedStudentData) + 1,] <- new_student

updatedStudentData


# Question 7
# Drop a column
droppedStudentData = subset(updatedStudentData, select = - student_grade)

droppedStudentData


# List
# Question 1
dfInList <- data.frame(
  me_hobby = c("Astronomy", "Astrology", "Astrophysics"),
  me_horoscope = c("Cancer", "Horse", "Water")
)

newList = list(
  "Me", 
  79, 
  c("Physics", "Chemistry"), 
  c(3.14159, 299792458), 
  dfInList,
  list(
    "What",
    "Is",
    "This"
  )
)

newList


# Question 2
newList2 = list(
  c("Primary", "Secondary", "Tertiary", "Quad"),
  matrix(c(floor(runif(9, min = 10, max = 50))), nrow = 3, ncol = 3),
  list(
    "What",
    "Is",
    "This",
    "Again"
  )
)

newList2

newList2[[1]]
newList2[[2]]