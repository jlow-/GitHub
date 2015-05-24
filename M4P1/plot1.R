#load data
source('get_and_clean_data.R')

#create png
png(filename='source data/plot1.png',width=480,height=480,units='px')

#plot data
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()
