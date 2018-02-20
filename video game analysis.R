library(ggplot2) 

# import csv
games <- read.csv("vgsales.csv") # source: https://www.kaggle.com/gregorut/videogamesales

# 
#pc1 <- ggplot(games, aes(x = Genre, fill = Genre))
#pc1 + geom_bar()

### Global Sales by Genre
global_sales_by_genre <- aggregate(Global_Sales~Genre, games, sum)
# plot
ggplot(global_sales_by_genre, aes(x= reorder(Genre, -Global_Sales), y=Global_Sales)) + 
  geom_bar(stat="identity", width=.5, aes(fill = Genre)) + 
  geom_text(aes(label=Global_Sales), vjust=-0.3, color="black", size=3.5) +
  labs(title="Video Game Global Sales (millions of copies) by Genre", 
       subtitle="Genre Vs Global Sales", 
       caption="source: vgchartz.com",
       x="Genre",
       y="Global Sales (millions of copies)") + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
# save
ggsave("global sales by genre.jpg", last_plot())

