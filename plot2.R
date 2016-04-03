## loads the data we are working with
source("loadData.R")

## open png graphics device
png(filename="plot2.png")

## original plot - removed x labels and bottom title
plot(data2$Global_active_power, type="o", pch=NA, xaxt="n", ylab = "Global Active Power (kilometers)", xlab = "")

## now add the Axis info
axis(1, at = c(1, 1450, 2900), labels= c("Thu", "Fri", "Sat"))

## close the png graphics device
dev.off()
