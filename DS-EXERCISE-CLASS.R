#INTRO
install.packages("dplyr")
library(dplyr)
library(readr)
#1 Student Fail
student_data <- read.csv("C:/Users/nad05/OneDrive/Documents/student_data.csv")
Student_fail <- student_data %>% filter(final_exam_mark< 40)
View(Student_fail)
View(student_data)
summary(student_data)
head(student_data,15)
tail(student_data)

#2 Arrange student data
mydata <- student_data%>% filter(Final_Exam > 40) %>% arrange(final_exam_mark)
View(mydata)

mydata1 <- student_data %>% filter(final_exam_mark > 40) %>%
arrange(desc(final_exam_mark))
View(mydata1)

#3 Select
mydata <- student_data%>% select(student_id,coursework_mark, final_exam_mark)
View(mydata)

#4 Mutate
mydata = student_data%>% mutate(Total_Mark =(coursework_mark + final_exam_mark/200*100))
View(mydata)

mydata <-cbind(student_data, Total_Mark = (student_data $coursework_mark + student_data$final_exam_mark/200*100))
View(mydata)

#Descriptive
data("iris")
str(mydata)
str(iris)

Summary(mydata)
mydata

A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)
sort(A)

#Histogram
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Frequency",
     col = "lightblue",
     border ="black")

#Boxplot
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length (cm)",
        col = c("lightgreen", "lightpink",
                "lightyellow"))

#Scatter Plot
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     col = as.numeric(iris$Species),
     pch = 19)

legend("topleft",
       legend = levels(iris$Species),
       col = 1:3,
       pch = 19)

#Outlier
library(readr)
dfplayers<-read.csv("players.csv")

median_age <- median(dfplayers$Age, na.rm = TRUE)

#dfplayers$Age[dfplayers$Age<18 |
        #dfplayers#Age>38]<-median_age               
#View(dfplayers)

data<-c(30,24,26,28,29,28,27,26,32,13,15,14,31,29,24,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main ="Boxplot")

first_q<-quantile(data,0.25)
third_q<-quantile(data,0.75)
iqr<- IQR(data)


#Outlier
data_new<-data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new

data_new <-data
avg <- round(mean(data_new))
data_new[data_new<le] <- avg
data_new[data_new>ue] <- avg
data_new
