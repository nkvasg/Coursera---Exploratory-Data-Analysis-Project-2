source("load_data.R")

subset <- NEI[NEI$fips == "24510", ]

library(ggplot2)

png(filename = "plot3.png", width = 480, height = 480, units = "px")

g <- ggplot(subset, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") +
    ylab(expression('Total PM'[2.5]*" Emissions")) +
    ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
dev.off()
