## loads the data we are working with
source("loadData.R")

## open png graphics device
png(filename="plot4.png")

##  set up the 2 x 2 grid for the 4 plots
par(mfrow = c(2, 2))


## PLOT 1

## original plot - removed x labels and bottom title
plot(data2$Global_active_power, type="o", pch=NA, xaxt="n", ylab = "Global Active Power", xlab = "")

## now add the Axis info
axis(1, at = c(1, 1450, 2900), labels= c("Thu", "Fri", "Sat"))


## PLOT 2

## original plot
plot(data2$Voltage, type="o", pch=NA, xaxt="n", ylab = "Voltage", xlab = "datetime")

## now add the Axis info
axis(1, at = c(1, 1450, 2900), labels= c("Thu", "Fri", "Sat"))

## PLOT 3

## create initial plot and sub metering 1
plot(data2$Sub_metering_1, type="o", pch=NA, xaxt="n", ylab = "Energy Sub Metering", xlab = "")

## add sub metering 2 points
points(data2$Sub_metering_2, type = "o", col = "red", pch = NA)

## add sub metering 3 points
points(data2$Sub_metering_3, type = "o", col = "blue", pch = NA)

## add x labels
axis(1, at = c(1, 1450, 2900), labels= c("Thu", "Fri", "Sat"))

## add legend
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1), lwd=c(2.5,2.5, 2.5))


## PLOT 4

## plot with titles
plot(data2$Global_reactive_power, type="o", pch=NA, xaxt="n", ylab = "Global_reactive_power", xlab = "datetime")

## add x labels
axis(1, at = c(1, 1450, 2900), labels= c("Thu", "Fri", "Sat"))

dev.off()
