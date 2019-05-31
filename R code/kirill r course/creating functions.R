
#creating a function with function()

#you can set parameters by adding variables into the parentheses, then adding the parameters as needed into the function
#You can also set defaults for the parameters by setting it = to something in the parentheses
myplot <- function(stats,rows=1:10){
  Data <- stats[rows,,drop=F] 
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[rows],pch=15:18, col=c(1:4,6), horiz=F)
}

?legend()

myplot(Points/FieldGoals)