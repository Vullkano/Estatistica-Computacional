# TPC 4

# Exercicio 1.

ppois(3, 3.1)

# Exercicio 2.

ppois(21, 7*3.1, lower.tail = FALSE)

# Exercicio 3.

pbinom(4,7,prob= ppois(3,3.1))

#A nossa vari�vel aleat�ria: X ~ O volume de combust�vel (em milh�es de litros) consumido mensalmente

#Em primeiro lugar definir a fun��o
fx <- function(x){
  ifelse((0 < x & x < 1), 3*(1-x)**2, 0)}

#Criar o gr�fico em causa
plot(fx, 0, 1,xlim=c(0,1),n=10000, 
     main = "Fun��o densidade do volume de combust�vel (em milh�es de litros)",
     xlab = "X",
     ylab = "F(x)")
points(x = c(0,0,1),
       y = c(0,3,0),
       pch = 1,
       col = "black")
## b)

#Para vermos graficamente a �rea em causa
points(x = c(0.2,0.8,0.8,0.2),
       y = c(0,0,fx(0.8),fx(0.2)),
       pch = 1,
       col = "blue")
polygon(c(0.8, 0.8, 0.2, 0.2, yh),c(fx(0.8), 0, 0, fx(0.2), fx(yh)),col="grey90", border = "black", lwd = 2)

#A probabilidade pedida pode ser obtida usando a fun��o integrate:
Prob <- integrate(fx, 0.2, 0.8, abs.tol = TRUE)
Prob$value

## c)

# Para sabermos o consumo m�dio mensal, primeiro precisamos de saber o consumo di�ria, 
# que � dada por E(X)
# Temos que criar uma nova fun��o dado que, para calcular o valores esperado, 
# precisamos de ter o x a multiplicar pela fun��o:
#

xfx <- function(x){
  ifelse((0 < x & x < 1), x*(3*(1-x)**2), 0)}

#Depois disto podemos calcular o integral da nova fun��o para ter o valor esperado:

E_X=integrate(xfx, 0, 1)
E_X$value

cat("O consumo m�dio mensal � de:",round(1000000*E_X$value),"Litros")

yh <- ((200:800)/1000)
yh
