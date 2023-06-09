# TPC-3

## Exercicio 1.

dado <- 1:6
lancamento_dados <- expand.grid(dado, dado)
lancamento_dados$Prob <- rep(1/nrow(lancamento_dados), times = nrow(lancamento_dados))
lancamento_dados

lancamento_dados$Soma_Faces <- rowSums(lancamento_dados[,1:2])
lancamento_dados

X <- aggregate(Prob~Soma_Faces, lancamento_dados, sum)
X

## Exercicio 2.


plot (x=X$Soma_Faces,
      y=X$Prob , 
      type="h",
      main="fun��o de probabilidade de X",
      xlab="x",              
      ylab="f(x)",
      col="light grey"              
)

#Adicionar pontos ao gr�fico

points(x=X$Soma_Faces,                     
       y=X$Prob,
       pch=16,
       col="blue"
)

## Exercicio 3.

FX_pontos <- cumsum(X$Prob)
FX_pontos

## Exercicio 4.
yha

## Exercicio 5.

plot.stepfun(
  stepfun(
    X$Soma_Faces,
    c(0,FX_pontos),
    right=FALSE
  ),
  verticals=FALSE,
  pch = 16,
  main="Fun��o Distribui��o de X",
  xlab="x",
  ylab="F(x)")

## Exercicio 6.
### Recurso � fun��o de probabilidade

sum(X[X$Soma_Faces <= 10 & X$Soma_Faces >= 7, ]$Prob )

### Recurso � fun��o de distribui��o

FX_pontos[9] - FX_pontos[5]

## Exercicio 7.
### Recurso � fun��o de probabilidade

sum(X[X$Soma_Faces <= 10 & X$Soma_Faces > 7, ]$Prob )

### Recurso � fun��o de distribui��o

FX_pontos[9] - FX_pontos[6]

## Exercicio 8.
### Recurso � fun��o de probabilidade

sum(X[X$Soma_Faces < 10 & X$Soma_Faces > 7, ]$Prob )

### Recurso � fun��o de distribui��o

FX_pontos[10] - FX_pontos[7]

## Exercicio 9.

### Valor esperado e vari�ncia numa v.a. discreta

#### M�dia

miu_X <- sum(X$Soma_Faces*X$Prob)
miu_X

#### Vari�ncia

##### m�dia dos quadrados menos o quadrado da m�dia
var_X<- sum((X$Soma_Faces^2)*X$Prob)-miu_X^2
round(var_X,4)

##### m�dia dos quadrados dos desvios face � m�dia
round(sum((X$Soma_Faces-miu_X)^2*X$Prob),4)

#### Desvio-Padr�o
round(sqrt(var_X),2)
