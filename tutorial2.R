# Clear environment variables
rm(list = ls())

# Question 3
weeks = 4
hoursPerWeek = 40
hourlyRate = 50

grossSalary = weeks * hoursPerWeek * hourlyRate

# Question 8
bonus = 1000L
tax = 0.2

salary = grossSalary + (bonus - (bonus * tax))
salary

# Question 9
chicken_rice = (1.25 + 2.8 + 0.8 + 0.4)
labour = chicken_rice * 0.2
profit = chicken_rice * 0.25

sell_price = chicken_rice + labour + profit
sell_price
