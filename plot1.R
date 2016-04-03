## loads the data we are working with
source("loadData.R")

png(filename="plot1.png")

hist(data2$Global_active_power, main = "Global Active Power", col = "red")

dev.off()
