# Exercicio 1
pnorm(0.437,0.5,0.05)

# Exercicio 2
qnorm(0.25, 0.5, 0.05)

# Exercicio 3
pnorm(10.75,0.5*20, 0.05*sqrt(20), lower.tail = FALSE)

# Exercicio 4
# i)
teste1 <- rnorm(20, 0.5*20, 0.05*sqrt(20))
teste1
sum(teste1)
mean(teste1)
# ii)
teste_1000<- rnorm(1000, 0.5*20, 0.05*sqrt(20))
h <- hist(teste_1000, plot=F, breaks = 20)
cols <- c('grey', "#8DD3C7", "#FFFFB3", "#BEBADA", "#FB8072")  
k <- cols[findInterval(h$mids, quantile(teste_1000), rightmost.closed=T, all.inside=F) + 1]
plot(h, col=k)

