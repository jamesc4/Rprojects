#------------------exploring data in a data frame
nrow(stats) #number of rows

ncol(stats) #number of columns

head(stats,n=10) #First 10 rows of data

tail(stats,n=5) #Bottom 5 rows of data

str(stats) #Structure of data (NOT strings)

#Factor: a categorical variable

summary(stats) #Gives you a summary of the data (how many of each categorical, some basic stats of each numerical value)

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

#-------------Basic operations with a data frame
stats[1:10,]
stats[c(4,100),]
is.data.frame(stats[1,]) #one row of a data frame stays a data frame (unlike matrices)

is.data.frame(stats[,1]) #however, one column of data turns into a vector
is.data.frame(stats[,1,drop=F])

head(stats)
stats$Birth.rate*stats$Internet.users #how to multiply two columns within a data frame

stats$MyCalc <- stats$Birth.rate*stats$Internet.users #how to add a column to a table
head(stats)

stats$MyCalc <- NULL #how to remove a column

cor.test(stats$Birth.rate,stats$Internet.users)

#test of knowledge
stats$xyz <- 1:5 #it will copy 1 to 5 and loop until all 195 values are filled

#for fun: correlation between Internet users and birth rates
cor.test(stats$Birth.rate,stats$Internet.users)

#--------------------------------Filtering data frames
head(stats)

#creating a filter for countries with fewer than 2% internet users
filter <- stats$Internet.users < 2
stats[filter,]

stats[stats$Birth.rate > 40,] #adding a filter directly into the data frame pulling

stats[stats$Birth.rate > 40 & stats$Internet.users < 2,] #both conditions true

stats[stats$Income.Group == "High income",] #filtering by categorical variables

#find information for Malta
stats[stats$Country.Name == "Malta",]

#----------------------introduction to qplot

?qplot()
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group,y=Birth.rate)
qplot(data=stats, x=Income.Group,y=Birth.rate,size=I(3),color=I("blue"))
?I() #I() stops qplot (and other packages) from interpreting different settings as new variables (ie. Blue, 3)
qplot(data=stats, x=Income.Group,y=Birth.rate,geom="boxplot")

#------------------------ Visualizing with qplot
qplot(data=stats, x=Internet.users, y=Birth.rate) #defaults to scatterplot since there's two numbers
qplot(data=stats, x=Internet.users, y=Birth.rate,size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate,color=Income.Group,size=I(4))


#------------------------ Creating a data frame
mydf <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
head(mydf)
colnames(mydf) <- c("Country","Country Code","Region")
?colnames
rm(mydf)

mydf <- data.frame(Country=Countries_2012_Dataset,Country.Code=Codes_2012_Dataset,Region=Regions_2012_Dataset) #naming the data frame as you create it
head(mydf)
summary(mydf)

#------------------------ Merging a data frame
head(stats)
head(mydf)
?merge()
merged <- merge(stats,mydf,by.x="Country.Code",by.y="Country.Code")
head(merged)
merged$Country.Name <- NULL
str(merged)

#----------------------- Visualizing with qplot pt. 2
qplot(data=merged,x=Internet.users,y=Birth.rate,color=Region,size=I(5))
#1. Shapes (see https://www.datanovia.com/en/wp-content/uploads/dn-tutorials/ggplot2/figures/030-ggplot-point-shapes-r-pch-list-showing-different-point-shapes-in-rstudio-1.png) 
qplot(data=merged,x=Internet.users,y=Birth.rate,color=Region,size=I(5),shape=I(15))
#2. Transparency - from 0 (transparent) to 1 (fully opaque)
qplot(data=merged,x=Internet.users,y=Birth.rate,color=Region,size=I(5),shape=I(19),alpha=I(0.3))

#3. Title
qplot(data=merged,x=Internet.users,y=Birth.rate,color=Region,size=I(5),shape=I(19),
      alpha=I(0.6),
      main="Birth Rate vs. Internet Users by Region")


