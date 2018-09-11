
# This sets plot images to a nice size.
options(repr.plot.width = 4, repr.plot.height = 4)

# Loading in the ggplot2 package
library(ggplot2)

t <- seq(0, 2*pi, length.out = 50)
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a circle
p <- ggplot(df, aes(x, y))
p + geom_point(mapping=aes(x,y))

# Defining the number of points
points<-500

# Defining the Golden Angle
angle=pi*(3-sqrt(5))

t <- (1:points) * angle
x <- sin(t)
y <-cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(mapping=aes(x,y))

df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral
p <- ggplot(df, aes(x*t, y*t))
p + geom_point() +
theme(panel.background = element_rect(fill = "white", colour = "grey50"),panel.grid.major=element_blank())


p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size=8,alpha=0.5,color="darkgreen") +
theme(panel.background = element_rect(fill = "white", colour = "grey50"))

p <- ggplot(df, aes(x*t, y*t))
p + geom_point(mapping=aes(size=t),alpha=0.5,color="black",shape=8) +
theme(panel.background = element_rect(fill = "white", colour = "grey50"),legend.position="none")

p <- ggplot(df, aes(x*t, y*t))
p + geom_point(mapping=aes(size=df$t),alpha=0.5,color="yellow",shape=17) +
theme(panel.background = element_rect(fill = "white", colour = "grey50"),legend.position="none")

angle <- 2.0
points <- 1000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)

df <- data.frame(t, x, y)

p <- ggplot(df, aes(x*t, y*t))
p + geom_point(mapping=aes(size=df$t),alpha=0.5,color="yellow",shape=2) +
theme(panel.background = element_rect(fill = "white", colour = "grey50"),legend.position="none")

angle <- 7*pi/180
points <- 2000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)

df <- data.frame(t, x, y)

p <- ggplot(df, aes(x*t, y*t))
p + geom_point(mapping=aes(size=df$t),alpha=0.5,color="magenta4",shape=45) +
theme(panel.background = element_rect(fill = "white", colour = "grey50"),legend.position="none")

