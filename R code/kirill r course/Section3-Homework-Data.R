#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#profit for each month
profit <- paste(round((revenue - expenses)/1000,0),"k",collapse = TRUE) 
profit

#profit after tax
profit_after_tax <- paste(round(((revenue - expenses)* 0.7)/1000,0),"k")
profit_after_tax

#profit margin for each month
profit_margin = paste(round((((revenue - expenses)* 0.7)/revenue)*100,0),"%")
profit_margin

#which months are good (above average profit margin)
good_months <- which(((revenue - expenses)* 0.7)>mean(((revenue - expenses)* 0.7)))
good_months

#which months are bad (below average profit margin)
bad_months <- which(((revenue - expenses)* 0.7)<mean(((revenue - expenses)* 0.7)))
bad_months

#best month
best_month <- which(((revenue - expenses)* 0.7) == max(((revenue - expenses)* 0.7)))
best_month

#worst month
worst_month <- which(((revenue - expenses)* 0.7) == min(((revenue - expenses)* 0.7)))
worst_month