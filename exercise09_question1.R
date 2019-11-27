# Produces graph of data from file called acetaminophendata.txt, which must be in the current working directory
data <- read.table(file="acetaminophendata.txt", sep="\t", header=TRUE)
library(ggplot2)
z <- ggplot(data=data, mapping=aes(x=X5.3.mg.mL.acetaminophem.added..mL.,y=current..uA.))
z+geom_point()+geom_smooth(method="lm")+ggtitle("Current vs. mL Added of Acetaminophen Standard")+xlab("5.3 mg/mL acetaminophen added (mL)")+ylab("Current (uA)")