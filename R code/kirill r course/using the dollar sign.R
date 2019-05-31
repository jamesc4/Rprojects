#--------- using the $ sign
stats
head(stats)
stats[3,3]
stats[3,"Birth.rate"]

# $ is a way to access a particular section of data
stats$Internet.users

stats[,"Internet.users"] #same as above

stats$Internet.users[2]

levels(stats$Income.Group) #levels() prints out the factors of a column





