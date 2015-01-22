emp <- function (mean, sd) {
    
    hist(rnorm(mean=mean, sd = sd, n = 2000), breaks=100)
    
    sds <- sort(c( mean + (sd * 3),  mean - (sd * 3),
              mean + (sd * 2),  mean - (sd * 2),
              mean + sd, mean - sd,
              mean))
    print(sds)
    
    abline(v = sds, col='orange',  lwd = 6)    
    abline(v = sds, col='brown',  lwd = 1)    
    abline(v = mean, col='red',  lwd = 6)    
    for(x in sds) {
        text(x, 65, labels=x)
    }
}