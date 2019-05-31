#A vector is a sequence of data elements of the same basic type. 

MyFirstVector <- c(3,45,56,732) #c() combines multiple elements into a vector
MyFirstVector
is.numeric(MyFirstVector)
is.double(MyFirstVector)

V2 <- c(3L,12L,243L,0L)
is.numeric(V2)
is.integer(V2)

V3 <- c("a","823","Hello")
V3
is.character(V3)

seq() #Sequence - like ':'
rep() #replicate

seq(1,15) #like 1:15
Z <- seq(1,15,2) #seq() allows you to specify how many steps you want to increment by
Z

rep(3,50) #replicates 3 for 50 times
d <- rep(3,50)

x <- c(80,20)
rep(x,10) #you can replicate vectors