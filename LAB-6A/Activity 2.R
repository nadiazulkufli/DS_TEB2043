#Activty 2.1
print(emp.data)

# will displats data in console (text format)
#tables icon -> opens spreadsheet style viewer
# Viewer is easier to read for large dataset

#Activity2.2
str(emp.data)

# it shows num of observations, num of variables and data types of each column

#Activity 2.3
print(summary(emp.data))

#gives statical summary
#Numeric -> min max median mean
# Character -> length class

#Activity 2.4
print(dim(emp.data))
print(ncol(emp.data))
print(nrow(emp.data))

#dim -> returns(rows,columns)
#ncol() -> number of column
#nrow() -> number of rows