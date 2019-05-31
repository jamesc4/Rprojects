getwd()
setwd("/Users/james.chan/Documents/R code/kirill r course")
fertility <- read.csv("P2-Section5-Homework-Data.csv")
head(fertility)

expectancy <- data.frame(Country.Code=Country_Code,Life_Expectancy_At_Birth_1960,Life_Expectancy_At_Birth_2013)
head(expectancy)
HWDataTable <- merge(fertility,expectancy,by.x = "Country.Code",by.y = "Country.Code")
summary(data2013)

data1960 <- HWDataTable[HWDataTable$Year==1960,]
data1960$Life_Expectancy_At_Birth_2013 <- NULL
colnames(data1960)[colnames(data1960)=="Life_Expectancy_At_Birth_1960"] <- "Life_Expectancy"
str(data2013)


data2013 <- HWDataTable[HWDataTable$Year==2013,]
data2013$Life_Expectancy_At_Birth_1960 <- NULL
colnames(data2013)[colnames(data2013)=="Life_Expectancy_At_Birth_2013"] <- "Life_Expectancy"
head(data2013)

scatterplot_1960 <- qplot(data=data1960,x=Fertility.Rate,y=Life_Expectancy,color=Region,main="Life Expectancy vs. Fertility at 1960")
scatterplot_1960
scatterplot_2013 <- qplot(data=data2013,x=Fertility.Rate,y=Life_Expectancy,color=Region,main="Life Expectancy vs. Fertility at 2013")
scatterplot_2013

#Europe, Asia, and the Americas' points are more bunched up in the 2013 scatterplot in the high life expectancy/low fertility rate quadrant
#Overall life expectancy appears to be ~10 years higher
#Fertility rate also appears to have dropped across all regions