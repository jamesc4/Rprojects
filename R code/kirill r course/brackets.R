#brackets are used to access elements within a vector
w <- c("a","b","c","d","e")

w[1]
w[2]
w[3]
w[-1] #accesses all except for the first element of the vector
v <- w[-3]
w[1:3] #accesses the first 3 elements into the vector
w[3:5]
w[c(1,3,5)] #uses c to specify which elements you want to access
w[c(-2,-4)]
