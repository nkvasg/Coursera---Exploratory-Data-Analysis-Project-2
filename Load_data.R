if(!exists("NEI")){
  NEI <- readRDS("summarySCC_PM25.rds")
}

SCC <- readRDS("Source_Classification_Code.rds")

head(NEI)
head(SCC)
dim(NEI)
dim(SCC)
