#Activity 4.1
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)

# $ can add new column
#Num of values must match number of rows

emp.newdata <- cbind(emp.data,
                     start_date = as.Date(c("2012-01-01","2013-09-23",
                                            "2014-11-15","2014-05-11",
                                            "2015-03-27")))
#cbind() binds column
#As.Date() coverts string to data type

#Activity 4.2
emp.newdata <- data.frame(
  emp_id = c(6:8),
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8),
  dept = c("IT","Operations","Finance")
)

emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)

#rbind add rows
#Structure must be same and columns names must match

#Activity 4.3
result <- emp.data[-c(2), -c(1)]
print(result)
 
#negative indexing removes rows/columns