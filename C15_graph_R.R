x <- c(10,45,50,23,56)
labels <- c("London","New York", "SIngapur","Mumbai")
pie(x, labels, col=rainbow(5))
barplot(x,col=rainbow(5))
dev.off(dev.cur(x))

