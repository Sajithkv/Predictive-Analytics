#example for forcating

Air <- data(AirPassengers)
View(Air)
class(AirPassengers)
start(AirPassengers)
summary(AirPassengers)
plot(AirPassengers)
abline(reg=lm(AirPassengers~time(AirPassengers)))
cycle(AirPassengers)
plot(aggregate(AirPassengers, FUN=mean))
boxplot(AirPassengers~cycle(AirPassengers))

install.packages('tseries') 
require(tseries)
adf.test(diff(log(AirPassengers)), alternative="stationary", k=0)
acf(diff(log(AirPassengers)))
pacf(diff(log(AirPassengers)))
(fit <- arima(log(AirPassengers), c(0, 1, 1),seasonal = list(order = c(0, 1, 1), period = 12)))
?ARIMA
pred(predict)

?ts.plot
