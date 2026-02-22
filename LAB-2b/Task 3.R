name <- readline(prompt= "Enter your name: ")
phone <- readline(prompt = "Enter your phone number: ")

name_upper <- toupper(name)
phone_len <- nchar(phone)
first_3 <- substr(phone, 1, 3)
last_4 <- substr(phone, phone_len - 3, phone_len)

print(paste0("Hi, ", name_upper, ". A verification code has been sent to ", first_3, " -xxxx", last_4))
