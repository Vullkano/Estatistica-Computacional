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
      main="função de probabilidade de X",
      xlab="x",              
      ylab="f(x)",
      col="light grey"              
)

#Adicionar pontos ao gráfico

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
  main="Função Distribuição de X",
  xlab="x",
  ylab="F(x)")

## Exercicio 6.
### Recurso à função de probabilidade

sum(X[X$Soma_Faces <= 10 & X$Soma_Faces >= 7, ]$Prob )

### Recurso à função de distribuição

FX_pontos[9] - FX_pontos[5]

## Exercicio 7.
### Recurso à função de probabilidade

sum(X[X$Soma_Faces <= 10 & X$Soma_Faces > 7, ]$Prob )

### Recurso à função de distribuição

FX_pontos[9] - FX_pontos[6]

## Exercicio 8.
### Recurso à função de probabilidade

sum(X[X$Soma_Faces < 10 & X$Soma_Faces > 7, ]$Prob )

### Recurso à função de distribuição

FX_pontos[10] - FX_pontos[7]

## Exercicio 9.

### Valor esperado e variância numa v.a. discreta

#### Média

miu_X <- sum(X$Soma_Faces*X$Prob)
miu_X

#### Variância

##### média dos quadrados menos o quadrado da média
var_X<- sum((X$Soma_Faces^2)*X$Prob)-miu_X^2
round(var_X,4)

##### média dos quadrados dos desvios face à média
round(sum((X$Soma_Faces-miu_X)^2*X$Prob),4)

#### Desvio-Padrão
round(sqrt(var_X),2)
