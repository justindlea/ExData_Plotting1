setClass("myDate");
setAs("character", "myDate", function(from) as.Date(from, format="%d/%m/%Y"));
data<-read.delim("eda\\household_power_consumption.txt", sep=";", header=T, na.strings="?", colClasses=c('myDate', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'));
data<-subset(data, Date>=as.Date("2007-02-01") & Date<=as.Date("2007-02-02"));
png("ExData_Plotting1\\plot1.png");
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)");
dev.off();