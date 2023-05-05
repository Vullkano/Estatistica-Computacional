Prob_dourado <- 3/5
Prob_prateado <- 2/5
Prob_inf_sabendo_dourado <- 4/5
Prob_inf__sabendo_prateado <- 3/10

# Exercicio 1

prob_peso_inf <-  Prob_dourado*Prob_inf_sabendo_dourado+Prob_prateado*Prob_inf__sabendo_prateado 
prob_peso_inf 
# 60% dos cutefish, naquela barragem, possui peso inferior ao regulamentado

# Exercicio 2

prob_peso_inf_e_dourado <- Prob_inf_sabendo_dourado * Prob_dourado
prob_peso_inf_e_dourado

Prob_dourado_sabendo_inf <- prob_peso_inf_e_dourado / prob_peso_inf
Prob_dourado_sabendo_inf

# A probabilidade de ser um peixe dourado, sabendo que tem um peso inferior, é 80%

# Exercicio 3 

Prob_dourado_e_sup <- (1 - Prob_inf_sabendo_dourado) * Prob_dourado
Prob_dourado_e_sup

# Exercicio 4
## Exercicio 4.1.

peso <- c('inf', 'sup')
peso_tabela <- expand.grid(peso, peso, peso, peso, peso)
peso_tabela

prob <- rep(1/nrow(peso_tabela))

for (i in 1:nrow(peso_tabela)){
  inf <- 3/5
  sup <- 2/5
  final <- 1
  for (j in 1:ncol(peso_tabela)){
    if(peso_tabela[i, j] == 'inf'){
      final <- final*inf
    }
    else{
      final <- final*sup
    }
    prob[i] <- final}
}
prob

peso_tabela_final <- data.frame(peso_tabela, 'prob' = 
                                  prob)
peso_tabela_final
## Exercicio 4.2.

conta <- function(x){
  length(which(x == 'inf'))
}

peso_tabela_final$total_inf <- apply(peso_tabela_final,
                               MARGIN = 1,
                               conta)

pelo_menos_3_inf <- peso_tabela_final[which(peso_tabela_final$total_inf>=3),]
pelo_menos_3_inf <- pelo_menos_3_inf[-7]
pelo_menos_3_inf

A <- sum(pelo_menos_3_inf$prob)
A
