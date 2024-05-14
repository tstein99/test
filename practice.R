library (datasets)

data(mtcars)
head(mtcars, 5)

#load ggplot package


#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)


#create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+
  ggtitle("displacement vs miles per gallon")+
  labs(x = "Displacement", y = "Miles per Gallon")

#create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

data(iris)
install.packages("GGally")
library(ggplot2)
library(GGally)
ggpairs(iris, mapping=ggplot2::aes(colour = Species))
install.packages("Rtools")
