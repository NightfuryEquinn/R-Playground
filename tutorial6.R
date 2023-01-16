# Clear env data
rm(list = ls())

# Question 1
# Accepting values
{
  print("Please enter five numbers to find the maximum number.")
  
  # Empty Array
  numArr <- c()
  
  for(x in 1:5) {
    num = as.integer(readline(prompt = paste("Number", x, ": ")))
    
    numArr <- append(numArr, num)
    
    # Restart variables
    rm(num)
  }
  
  # Find the max value
  maxNum = max(numArr)
  
  print(paste("The maximum number is", maxNum))
}


# Question 2
# Accepting values
{
  print("Please enter ten numbers to be added. Negative number will be ignored.")
  
  # Empty Array
  sumArr = c()
  
  for(y in 1:10) {
    num = as.integer(readline(prompt = paste("Number", y, ": ")))
    
    if(num > 0) {
      sumArr[y] = num
      print("Added.")
    } else {
      sumArr[y] = 0
      print("Ignored.")
    }
    
    # Restart variables
    rm(num)
  }
  
  # Sum all the numbers
  print(paste("The total sum is", sum(sumArr)))
}


# Question 3
{
  # Accepting values and print multiple lines
  cat("
Select your favourite programming language: \n
1 - Java
2 - Python
3 - JavaScript
4 - Swift
"
  )
  
  input = as.integer(readline(prompt = "Please enter an integer from 1 to 4: "))

  # Switch
  result <- switch(
    input,
    "Your favourite is Java",
    "Your favourite is Python",
    "Your favourite is JavaScript",
    "Your favourite is Swift"
  )
  
  print(result)
}


# Question 4
# Asking the range of array
{
  count = as.integer(readline(prompt = cat("How many numbers you want to sum?\n")))
  
  sumArr2 = c()
  
  for(x in 1:count) {
    num = as.integer(readline(prompt = paste("Number", x, ": ")))
    
    sumArr2 <- append(sumArr2, num)
    
    # Restart variables
    rm(num)
  }
  
  # Sum all the numbers
  print(paste("The total sum is", sum(sumArr2)))
}