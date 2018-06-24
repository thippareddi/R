options(max.print=1000000)
MyData <- read.csv(file="D:\\R\\Weekday_DataScience-master\\MBA Starting Salaries Data.csv", header=TRUE, sep=",")

# Get the GMAT  TPC from data frame.
Gmat_tpc <- MyData$gmat_tpc
work_yrs<- MyData$work_yrs

#gmat_tpc
gmat_tpc_max <- max(Gmat_tpc)
 gmat_tpc_mean <- mean(Gmat_tpc)
 
 # Give the chart file a name
 png(file = "gmat_tpc.png")
 # Plot the bar chart 
 barplot(Gmat_tpc)
 pie(Gmat_tpc,"TPC")
hist(Gmat_tpc,xlab = "Histogram",col = "yellow",border = "blue")
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

