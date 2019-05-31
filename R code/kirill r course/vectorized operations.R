#vector arithmetics
a <- c(50,34,111,7,24,631,20,4,7,21)
b <- c(100,2,56,12,0,65,93,10,244,1)

#You can simply add vectors together
c <- a + b
c

#recycling of vectors - if you are adding a smaller vector to a bigger one, the smaller vector gets "recycled" until the numbers match.
s <- c(50,34,11,7,24)
r <- s + b
r

#vectors can be used in a function, and can be returned from functions

x <- rnorm(5)
x

#print out each element in the vector - R-specific programming loop
for(i in x) { #only possible because x is a vector
  print(i)
}

#conventional programming loop
for(j in 1:5){
  print(x[j])
}

#------------------------
#Vectorized vs. devectorized operation
N <- 100
a <- rnorm(N)
b <- rnorm(N)

#vectorized approach - difference between sets a and b
c <- a * b

#devectorized approach
d <- rep(NA,N) #creates empty vector
for(i in 1:N){
  d[i] <- a[i] * b[i]
}

