library(plyr)

def <- readRDS("Estudo_Oculos_Sol.rds")
def
head(def)
def$Pub.Mk
nrow(def)


ddply(def$Pub.Mk)
mean(def$Pub.Mk)
sd(def$Pub.Mk)


"X <- A import�ncia  m�dia concedida � Publicidade e Marketing (vari�vel Pub.Mk)"

## O z � do upper bound para baixo, ou seja, 0.995