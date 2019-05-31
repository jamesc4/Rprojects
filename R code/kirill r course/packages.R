#Packages are collections of R functions, data, and compiled code in a well-defined format. The directory where packages are stored are called libraries.

install.packages("ggplot2")


?qplot()
?diamonds

qplot(data=diamonds,carat,price,colour=clarity,facets=.~clarity)