data(diamonds)
diamonds= data.table(diamonds)
diamonds

summary(diamonds)

#data exploration using Boxplot
ggplot(diamonds ,aes(x=cut,y=price, color=cut)) +
  geom_boxplot()
#data exploration by showing the distribution of each cut
ggplot(diamonds ,aes(x=(price))) +
  geom_histogram(stat="bin",binwidth= 500) +
  facet_wrap(~cut, scales = "free")

#Price ves carat vs cut
ggplot(diamonds ,aes(price,carat, col= cut))+
  geom_point()

#price vs carat vs color
ggplot(midwest ,aes(county,poptotal, col= popdensity))+
  geom_point()

#price vs carat vs cut using identity
ggplot(diamonds, aes(x = price,
                 y = carat,
                 color = cut)) +
  geom_point(position = "identity")

#price vs carat vs cut using jitter
ggplot(diamonds, aes(x = price,
                     y = carat,
                     color = cut)) +
  geom_point(position = "jitter")

#price vs carat vs cut using position jitter
posn_j <- position_jitter(0.1,seed = 136)
ggplot(diamonds, aes(x = price,
                     y = carat,
                     color = cut)) +
  geom_point(position = posn_j)


ggplot(diamonds, aes(x = price,
                 y = carat,
                 color = cut)) +
  geom_point(position = "jitter") +
  scale_x_continuous("Price") +
  scale_color_discrete("carat")

ggplot(diamonds, aes(x = price,
                     y = carat,
                     color = cut)) +
  geom_point(position = "jitter") +
  scale_x_continuous("Price") +
  scale_color_discrete("carat")


ggplot(data=diamonds) + geom_histogram(binwidth=500,
                                       ggplot(data=diamonds) + geom_histogram(binwidth=500, aes(x=price)) + ggtitle("Diamond Price Distribution") + xlab("Diamond Price U$") + ylab("Frequency") + theme_minimal()

ggplot(data=diamonds) + geom_histogram(binwidth=100, aes(x=diamonds$price)) + ggtitle("Diamond Price Distribution by Cut") + xlab("Diamond Price U$") + ylab("Frequency") + theme_minimal() + facet_wrap(~cut)
                                       

ggplot(data=diamonds, aes(x=carat)) + geom_freqpoly() + ggtitle("Diamond Frequency by Carat") + xlab("Carat Size") + ylab("Count")
