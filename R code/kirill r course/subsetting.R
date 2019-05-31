x <- c("a","b","c","d","e")

x
x[c(1,5)]
x[1]

Games
Games[1:3,6:10] #gets the first three rows of players and 2010-2014 (the 6th through 10th rows)
Games[,c("2008","2009")] #data for 2008 to 2009
Games[c(1,10),]
Games[1,5]
Games[1,]

is.matrix(Games[1,])
is.vector(Games[1,])
#R is guessing that a one-dimensional matrix is a vector and adjusting accordingly

#to override this:
Games[1,,drop=F] #drop=T (the default behavior) drops unnecessary rows and may transform matrices into vectors
is.matrix(Games[1,,drop=F])
is.vector(Games[1,,drop=F])

