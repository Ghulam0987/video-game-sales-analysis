library(ggplot2) 

# import csv
games <- read.csv("vgsales.csv") # source: https://www.kaggle.com/gregorut/videogamesales


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


### NA Sales by Genre
na_sales_by_genre <- aggregate(NA_Sales~Genre, games, sum)
# plot
ggplot(na_sales_by_genre, aes(x= reorder(Genre, -NA_Sales), y=NA_Sales)) + 
  geom_bar(stat="identity", width=.5, aes(fill = Genre)) + 
  geom_text(aes(label=NA_Sales), vjust=-0.3, color="black", size=3.5) +
  labs(title="Video Game North America Sales (millions of copies) by Genre", 
       subtitle="Genre Vs NA Sales", 
       caption="source: vgchartz.com",
       x="Genre",
       y="NA Sales (millions of copies)") + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
# save
ggsave("NA sales by genre.jpg", last_plot())


### EU Sales by Genre
eu_sales_by_genre <- aggregate(EU_Sales~Genre, games, sum)
# plot
ggplot(eu_sales_by_genre, aes(x= reorder(Genre, -EU_Sales), y=EU_Sales)) + 
  geom_bar(stat="identity", width=.5, aes(fill = Genre)) + 
  geom_text(aes(label=EU_Sales), vjust=-0.3, color="black", size=3.5) +
  labs(title="Video Game Europe Sales (millions of copies) by Genre", 
       subtitle="Genre Vs EU Sales", 
       caption="source: vgchartz.com",
       x="Genre",
       y="EU Sales (millions of copies)") + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
# save
ggsave("EU sales by genre.jpg", last_plot())


### JP Sales by Genre
jp_sales_by_genre <- aggregate(JP_Sales~Genre, games, sum)
# plot
ggplot(jp_sales_by_genre, aes(x= reorder(Genre, -JP_Sales), y=JP_Sales)) + 
  geom_bar(stat="identity", width=.5, aes(fill = Genre)) + 
  geom_text(aes(label=JP_Sales), vjust=-0.3, color="black", size=3.5) +
  labs(title="Video Game Japan Sales (millions of copies) by Genre", 
       subtitle="Genre Vs JP Sales", 
       caption="source: vgchartz.com",
       x="Genre",
       y="JP Sales (millions of copies)") + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
# save
ggsave("JP sales by genre.jpg", last_plot())



