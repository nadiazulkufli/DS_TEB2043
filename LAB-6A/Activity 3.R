#Activity 3.1
print(emp.data$salary)
print(emp.data[["salary"]])
print(emp.data[3])

#$ extract column as vector
#[["salary"]] same as $
#[3] returns column as data frame
#$ gives vector while [] keeps data frame format

#Activity 3.2
result <- emp.data[1:2,]
print(result)

#data[row,column]
#Leaving column empty means select all columns
#Return first 2 rows w all columns

