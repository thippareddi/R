options(max.print=1000000)
MyData <- read.csv(file="D:\\R\\Weekday_DataScience-master\\MBA Starting Salaries Data.csv", header=TRUE, sep=",")

# Get the GMAT  TPC from data frame.
Gmat_tpc <- MyData$gmat_tpc
work_yrs<- MyData$work_yrs

x <- MyData$gmat_tpc
Freq <- table(x)
relFreq <- prop.table(Freq)
Cumulative_Freq <- cumsum(Freq)
Cumulative_Relative_Freq <- cumsum(relFreq)
data.frame(xval = names(Freq), Freq=Freq, relFreq=relFreq, 
           Cumulative_Freq=Cumulative_Freq, 
           Cumulative_Relative_Freq=Cumulative_Relative_Freq)

#gmat_tpc

gmat_tpc_max <- max(Gmat_tpc)
print(gmat_tpc_max )
 gmat_tpc_mean <- mean(Gmat_tpc)
 print(gmat_tpc_mean)
 gmat_tpc_median<-median(Gmat_tpc)
 print(gmat_tpc_median)
 # Create the function.
 getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
 }
 
 
 gmat_tpc_mode<-getmode(Gmat_tpc)
 print(gmat_tpc_mode)

 # Give the chart file a name
 png(file = "gmat_tpc.png")
 # Plot the bar chart 
 barplot(Gmat_tpc)
 pie(Gmat_tpc,"TPC")
hist(Gmat_tpc,xlab = "Histogram",col = "yellow",border = "blue")

# plot a cumulative histogram of y
hist(Gmat_tpc) -> h 
h$counts <- cumsum(h$counts) 
plot( h ) 


 dev.off()
 feq <-table(Gmat_tpc)

#end gmat_tpc

 #work_yrs
 work_yrs_max <- max(work_yrs)
 work_yrs_mean <- mean(work_yrs)
 
 # Give the chart file a name
 png(file = "work_yrs.png")
 dev.off()
 
 # Plot the bar chart 
 barplot(work_yrs)
 pie(work_yrs,"TPC")
 hist(work_yrs,xlab = "Histogram",col = "yellow",border = "blue")

 feq <-table(work_yrs)
 
 #end work_yrs

