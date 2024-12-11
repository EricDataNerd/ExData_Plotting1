## import table of data from 1/2/2007 to 2/2/2007
install.packages("sqldf")
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt","select * from file where Date = '1/2/2007' or Date = '2/2/2007' ",sep=";") 

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)

## export file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()