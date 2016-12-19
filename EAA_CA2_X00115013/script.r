setwd ("C:\\Users\\Tom\\Desktop\\EAA_CA2_X00115013")

# Thomas Murray X00115013
# CA2 EAA

#Read in data from results.dat
perfdata <- read.table("results.dat", header=TRUE, )

#Set Time
timeTest <- 10
#Set Percentage
percent <- 100
#Get the average utilization
avgutil <- 100 - perfdata$IDLE;

#Users
n <- perfdata$N

#Calculate utilisation
calcUI <- function(){
ui <- avgutil/percent
}

#Calculate throughput
calcXO <- function(){
x0 <- perfdata$C0/timeTest;
}

#Calculate service demand
calcDI <- function(){
di <- calcUI()/calcXO()
}

#Calculate response time
calcR <- function(){
r <- n/calcXO()
}

dev.new()
# Creating a Graph for utilisation Vs Users
plot(n, calcUI(),type="l", col="blue", lty=5, ylab = 'UI' , xlab = 'N') 
abline(lm(calcUI()~n))
title("Utilisation Vs Users")


dev.new()
# Creating a Graph for Throughput  Vs Users
plot(n, calcXO(),type="l", col="blue", lty=5, ylab = 'XO' , xlab = 'N') 
abline(lm(calcXO()~n))
title("Throughput Vs Users")


dev.new()
# Creating a Graph for Service Demand  Vs Users
plot(n, calcDI(),type="l", col="blue", lty=5, ylab = 'DI' , xlab = 'N') 
abline(lm(calcDI()~n))
title("Service Demand Vs Users")


dev.new()
# Creating a Graph for Response Time  Vs Users
plot(n, calcR(),type="l", col="blue", lty=5, ylab = 'R' , xlab = 'N') 
abline(lm(calcR()~n))
title("Response Time Vs Users")

#Print Utilisation Summary
print("Utilisation Summary")
print(summary(calcUI()))

#Print Throughput Summary
print("Throughput Summary")
print(summary(calcXO()))

#Print Service Demand Summary
print("Service Demand Summary")
print(summary(calcDI()))

#Print Response Time Summary
print("Response Time Summary")
print(summary(calcR()))

#Calculate utilisation average
print("Utilisation average")
ui <- mean(avgutil/percent)
print(ui)

#Calculate throughput average
print("Throughput average")
x0 <- mean(perfdata$C0/timeTest)
print(x0)

#Calculate service demand average
print("Service demand average")
di <- mean(ui/x0)
print(di)

#Calculate response time average
print("Response time average")
r <- mean(perfdata$N/x0)
print(r)
