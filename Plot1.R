source("load_data.R")
png(filename = "plot1.png", width = 480, height = 480, units = "px")
totalEmissions <- aggregate(NEI$Emissions, list(NEI$year), sum)
plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in the United States from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()
