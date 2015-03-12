source("load_data.R")
subset <- NEI[NEI$fips == "24510", ]

png(filename = "plot5.png", width = 480, height = 480, units = "px")
motor <- grep("motor", SCC$Short.Name, ignore.case = T)
motor <- SCC[motor, ]
motor <- subset[subset$SCC %in% motor$SCC, ]
motorEmissions <- aggregate(motor$Emissions, list(motor$year), sum)

plot(motorEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions From Motor Vehicle Sources\n from 1999 to 2008 in Baltimore City", 
     ylab = expression('Total PM'[2.5]*" Emission"))

dev.off() 
