# Install if not installed
install.packages("readxl")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyr")

# Load libraries
library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)

# Load your cleaned dataset
data <- read_excel("cleaned_movielens_data.xlsx")

# View structure
str(data)

num_users <- n_distinct(data$user_id)
num_users

num_movies <- n_distinct(data$item_id)
num_movies

avg_rating <- mean(data$rating)
avg_rating

popular_movies <- data %>%
  group_by(movie_title) %>%
  summarise(total_ratings = n()) %>%
  arrange(desc(total_ratings)) %>%
  slice(1:10)

popular_movies

active_users <- data %>%
  group_by(user_id) %>%
  summarise(total_ratings = n()) %>%
  arrange(desc(total_ratings)) %>%
  slice(1:10)

active_users

genre_columns <- c("Action","Adventure","Animation","Childrens","Comedy",
                   "Crime","Documentary","Drama","Fantasy","Film_Noir",
                   "Horror","Musical","Mystery","Romance","Sci_Fi",
                   "Thriller","War","Western")

genre_popularity <- colSums(data[genre_columns])

genre_popularity <- sort(genre_popularity, decreasing = TRUE)

genre_popularity

ggplot(data, aes(x = rating)) +
  geom_histogram(binwidth = 0.5) +
  labs(title = "Rating Distribution",
       x = "Rating",
       y = "Count")

ggplot(popular_movies, aes(x = reorder(movie_title, total_ratings),
                           y = total_ratings)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Top 10 Most Popular Movies",
       x = "Movie",
       y = "Number of Ratings")

genre_df <- data.frame(
  Genre = names(genre_popularity),
  Count = as.numeric(genre_popularity)
)

ggplot(genre_df[1:10, ], aes(x = reorder(Genre, Count), y = Count)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Top Genres",
       x = "Genre",
       y = "Count")
