# analysis of provided data file, data.txt
data <- read.table(file="data.txt", sep=",", header=TRUE)
library(ggplot2)
library(reshape2)
library(cowplot)
x <- ggplot(data=data, mapping=aes(x=region, y=observations))
x+stat_summary(geom="bar", fun.y="mean")+stat_summary(geom="errorbar",fun.data="mean_se")+ggtitle("Observations vs. Region")+xlab("Region")+ylab("Observations")
c <- x+stat_summary(geom="bar", fun.y="mean")+stat_summary(geom="errorbar",fun.data="mean_se")+ggtitle("Observations vs. Region")+xlab("Region")+ylab("Observations")
#
y <- ggplot(data=data, mapping=aes(x=region, y=observations))
y+geom_jitter()+ggtitle("Observations vs. Region")+xlab("Region")+ylab("Observations")
d <- y+geom_jitter()+ggtitle("Observations vs. Region")+xlab("Region")+ylab("Observations")
#
plot_grid(c,d)