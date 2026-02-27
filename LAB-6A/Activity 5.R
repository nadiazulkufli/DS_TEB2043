friends <- data.frame(
  friend_id = 1:5,
  friend_name = c("Sachin","Sourav","Dravid","Sehwag","Dhoni"),
  location = c("Kolkata","Delhi","Bangalore","Hyderabad","Chennai")
)

print(friends)

friends$age <- c(30,32,35,33,31)

friends$join_date <- as.Date(c("2020-01-01","2020-02-10",
                               "2020-03-15","2020-04-20",
                               "2020-05-25"))

print(friends)

new_friend <- data.frame(
  friend_id = 6,
  friend_name = "Virat",
  location = "Mumbai",
  age = 29,
  join_date = as.Date("2020-06-10")
)

friends <- rbind(friends, new_friend)
print(friends)
