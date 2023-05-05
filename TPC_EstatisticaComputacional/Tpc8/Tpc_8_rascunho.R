# TPC_8

def <- readRDS("Estudo_Oculos_Sol.rds")
def$Price

## Exercicio 1.

Price_hist <- hist(def$Price, breaks = 100)$breaks
color_list <- rep('blue', length(Price_hist))
color_list[Price_hist < mean(def$Price)] <- 'red'

hist(def$Price, 
     xlab='Avaliação da Importância do preço', 
     main="A Importância do Preço na compra de óculos de sol"",
     breaks=100,
     freq = FALSE,
     col=color_list)

abline(v=mean(def$Price),col="black",lwd=3, lty=2)
legend("topright",                          # Put legend in top right of graph
       legend = c("> média def$Price",
                  "<= média def$Price"),         # Names of groups
       col = c("blue", "red"),               # Colors of symbols
       bty = "n",
       lwd = 2)                             # Symbol types

import_maior_media <- mean(def$Price <= mean(def$Price))
round(caso1,4)

#### Relacionar com o gráfico e tirar conclusões

## Exercicio 2.

  
  
eixo_x<-c(-4,4)
eixo_y<-c(0,dnorm(0))

plot(1, 
     xlim = eixo_x, ylim = eixo_y,
     type = "n", 
     main = "N(0,1)",
     ylab = "f.d.p", xlab = "")

# Add x and y-axis lines
abline(h = 0, col="grey")
abline(v = 0, col = "black", lty=2, lwd=2)
abline(v = -qt(1-significancia,n1+n2-2), col = "red", lty=2, lwd=2)
abline(v = qt(1-significancia,n1+n2-2), col = "red", lty=2, lwd=2)

# desenhar a função
# A função a incluir será a densidade de probabilidade

curve(dnorm(x),
      from = eixo_x[1], to = eixo_x[2],
      n = 1000,
      col = "darkblue",
      lwd = 2,
      add=TRUE)

x1_pos <- seq(qt(1-significancia,n1+n2-2), 4,0.01)      # sequência de pontos, separados por 0.01
y1_pos <- dnorm(x1_pos)       # imagem desses x

coord_x_pos <- c(x1_pos, 4,100) 
coord_y_pos <- c(0,y1_pos,0)
polygon(coord_x_pos,coord_y_pos,col='blue4')


#marcar a área

x1_neg <- seq(-4, -qt(1-significancia,n1+n2-2),0.01)      # sequência de pontos, separados por 0.01
y1_neg <- dnorm(x1_neg)       # imagem desses x

coord_x_neg <- c(-4,x1_neg,-qt(1-significancia,n1+n2-2)) 
coord_y_neg <- c(0,y1_neg,0)
polygon(coord_x_neg,coord_y_neg,col='blue4')

text(x=3,
     y=.2,
     labels=paste(round(qnorm(0.05, lower.tail = FALSE),3)),
     pos=2,
     col="darkred")

text(x=2.39,
     y=.2,
     labels="X = ",
     pos=2,
     col="darkred")

text(x=2,
     y=.05,
     labels="RC",
     pos=1,
     col="white")

# - - 

text(x=-3,
     y=.2,
     labels=paste(round(qnorm(0.05, lower.tail = FALSE),3)),
     pos=2,
     col="darkred")

text(x=-2.39,
     y=-.2,
     labels="X = ",
     pos=2,
     col="darkred")

text(x=-2,
     y=-0.05,
     labels="RC",
     pos=1,
     col="white")
