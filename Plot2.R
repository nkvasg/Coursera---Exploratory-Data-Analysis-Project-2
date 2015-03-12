source("load_data.R")

subset <- NEI[NEI$fips == "24510", ]
png(filename = "plot2.png", width = 480, height = 480, units = "px")
totalEmissions <- aggregate(subset$Emissions, list(subset$year), sum)

plot(totalEmissions, type = "l", xlab = "Year", main = "Total Emissions in Baltimore City from 1999 to 2008", ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()
