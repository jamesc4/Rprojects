#------------------exploring data in a data frame
nrow(stats) #number of rows

ncol(stats) #number of columns

head(stats,n=10) #First 10 rows of data

tail(stats,n=5) #Bottom 5 rows of data

str(stats) #Structure of data (NOT strings)

#Factor: a categorical variable

summary(stats) #Gives you a summary of the data (how many of each categorical, some basic stats of each numerical value)