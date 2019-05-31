#In R, tables are stored in matrices
#You call elements in a matrix by A[Row#,Column#]
#If you want to call all elements in a Row: [Row#,]; for Column: [,Column#]
#All elements of a matrix must be of one data type
my.data <- 1:20
my.data

#ways to create a matrix
?matrix() #creates a matrix from a vector; not commonly used
A <- matrix(my.data,4,5)
A
A[2,3]

B <- matrix(my.data,4,5,byrow=T) #creates the same matrix but fills in a row first
B
B[2,5]

?rbind() #Takes a sequence of vectors and binds them into a matrix by row
r1 <- c("I","am","happy")
r2 <- c("What","a","day")
r3 <- c(1,2,3)
C <- rbind(r1,r2,r3) #r3 is automatically converted into characters
C

?cbind() #Takes a sequence of vectors and binds them into a matrix by column
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D

#naming matrix dimensions with colnames() and rownames()
Charlie <- 1:5
Charlie

names(Charlie) <- c("a","b","c","d","e")

#returns name(s) of dimesnions within a matrix or vector
names(Charlie)
Charlie["d"]

#clear names
names(Charlie) <- NULL
Charlie

#Naming matrix dimensions
temp.vec <- rep(c("a","b","zZ"),each=3)
temp.vec

Bravo <- matrix(temp.vec,3,3)
Bravo

#Naming rows and columns of matrix
rownames(Bravo) <- c("How","Are","You")
colnames(Bravo) <- c("x","y","z")
Bravo

Bravo[2,2]
Bravo["Are","y"] <- 0
Bravo
rownames(Bravo)

