library(plyr)

def <- readRDS("Estudo_Oculos_Sol.rds")
def
head(def)
def$Pub.Mk
nrow(def)


ddply(def$Pub.Mk)
mean(def$Pub.Mk)
sd(def$Pub.Mk)


"X <- A importância  média concedida à Publicidade e Marketing (variável Pub.Mk)"

## O z é do upper bound para baixo, ou seja, 0.995