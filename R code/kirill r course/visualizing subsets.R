#Not subsetting properly - converts matrix into vector and messes up visualization
Data <- MinutesPlayed[1,] #create a separate manipulation of the matrix for easier manipulation

matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],pch=15:18,  col=c(1:4,6), horiz=F)


#How subsetting fixes this
Data <- MinutesPlayed[1,,drop=F] #create a separate manipulation of the matrix for easier manipulation

matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],pch=15:18,  col=c(1:4,6), horiz=F)
