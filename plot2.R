setClass("myDate");
setAs("character", "myDate", function(from) as.Date(from, format="%d/%m/%Y"));
data<-read.delim("eda\\household_power_consumption.txt", sep=";", header=T, na.strings="?", colClasses=c('myDate', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'));
data<-subset(data, Date>=as.Date("2007-02-01") & Date<=as.Date("2007-02-02"));
data$datetime <- strptime(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S");
png("ExData_Plotting1\\plot2.png");
plot(data$datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)");
dev.off();