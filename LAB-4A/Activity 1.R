# Question 1.1
# Create a vector as input.
data <-
  c("East","West","East","North","North","East","West","West","West","
East","North")
print(data)
print(is.factor(data))
# Apply the factor function.
factor_data <- factor(data) #returns TRUE
print(factor_data)
print(is.factor(factor_data))
length(factor_data) # returns 11 which number of elements

# A factor in R is used to store categorical data with predefined levels

#Activity 1.2
data <-
  factor(c("East","West","East","North","North","East","West","West","
West","East","North"))
data[3] #return the third element of factor

#Factor elements can be accessed using index position like normal vectors

#Activity 1.3
data <-
  factor(c("East","West","East","North","North","East","West","West","
West","East","North"))
data[3] <- "NorthWest" #Nortwest no existing level in the factor

#You cannot assign a new category unless it is first added to the factor level.

#Activity 1.4
data <- c("East","West","East","North","North","East","West",
          "West","West","East","North")
# Create the factors
factor_data <- factor(data)
print(factor_data)
# Apply the factor function with required order of the level.
new_order_data <- factor(factor_data,levels =
                           c("East","West","North"))
print(new_order_data)

#we can manually define the order of factor levels using the levels argument

#Activity 1.5
v <- gl(3, 4, labels = c("Tampa", "Seattle","Boston"))
print(v)

#gl() automatically generates factor levels with equal repetitions.