#my solution
rm(n)
rm(a)
n = 100 # insert desired sample size here
a = 0

for(i in 1:n) {
  x <- rnorm(1)
  if (x <= 1 & x >= -1) {
    a <- a+1
  }
}

answer <- a/n
answer

#Kirill's solution
rm(n)
rm(a)
n = 100 # insert desired sample size here
a = 0

for(i in rnorm(n)) {
  if (i <= 1 & i >= -1) {
    a <- a + 1
  }
}

answer <- a/n
answer