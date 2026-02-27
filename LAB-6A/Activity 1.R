#Activity 1.1
emp.data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25)
)

#each column can contain different data type.
#It creates a structured employee dataset with 5 rows and 3 columns

#Activity 1.2
my_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2)
print(my_matrix)

df_from_matrix <- data.frame(my_matrix)
print(df_from_matrix)

names(df_from_matrix) <- c('col_1', 'col_2', 'col_3')
print(df_from_matrix)

#matrix() create a 2x3 matrix
#data.frame() converts matrix into data frame
#names() renames the column names
#Matrix elements must be same data type
#Data frames allows more flexibility

#Activity 1.3
my_list <- list(
  rating=1:4,
  animal=c('koala','hedgehog','sloth','panda'),
  country=c('Australia','Italy','Peru','China'),
  avg_sleep_hours=c(21,18,17,10)
)

print(my_list)

super_sleepers <- data.frame(my_list)
print(super_sleepers)

# A list can store diff data types
#Convert list into data frame creates columns from each list elemet
#Each vector become one column

