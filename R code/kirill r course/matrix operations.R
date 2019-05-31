#Points Per 36 minutes (advanced stats ftw)
Points_Per_36 <- Points / MinutesPlayed * 36 

Points_Per_36

Games
rownames(Games)
Games["LeBronJames","2012"]

#Dividing one matrix by another (must be same size)
round(FieldGoals / Games,1)

round(MinutesPlayed / Games,0)