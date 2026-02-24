# Load library
install.packages("tidyverse")   # run sekali sahaja
library(tidyverse)

# Import CSV
data <- read.csv("Unclean Dataset.csv",
                 stringsAsFactors = FALSE)

# Check data
head(data)
str(data)
data <- data[,1, drop = FALSE]
data_clean <- data %>%
  separate(Student_ID,
           into = c("Student_ID","First_Name","Last_Name",
                    "Age","Gender","Course",
                    "Enrollment_Date","Total_Payments"),
           sep="\\|",
           fill="right")

data_clean <- data_clean %>%
  mutate(across(everything(), trimws))

# Remove non-numbers
data_clean$Age <- gsub("[^0-9]", "", data_clean$Age)

# Convert to numeric
data_clean$Age <- as.numeric(data_clean$Age)

data_clean$Total_Payments <- gsub("£","", data_clean$Total_Payments)
data_clean$Total_Payments <- gsub(",","", data_clean$Total_Payments)
data_clean$Total_Payments <- as.numeric(data_clean$Total_Payments)

data_clean <- data_clean[!is.na(data_clean$Age), ]

str(data_clean)

summary(data_clean)
dim(data_clean)

hist(data_clean$Age,
     main="Age Distribution",
     col="skyblue",
     xlab="Age")
barplot(table(data_clean$Gender),
        main="Gender Distribution",
        col="pink")
barplot(table(data_clean$Course),
        main="Course Distribution",
        las=2)
hist(data_clean$Total_Payments,
     main = "Payment Distribution",
     col = "lightgreen",
     xlab = "Total Payments")

