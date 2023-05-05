# install.packages("dplyr")
library(dplyr)

#Exercicio 1
dado_6_faces <- 1:6
dado_8_faces <- 1:8

dados_combi <- expand.grid(dado_6_faces, dado_8_faces)
dados_combi

probs_dados <- rep(1/nrow(dados_combi), times=nrow(dados_combi))
dados_combi_prob <- data.frame(dados_combi, probs_dados)
dados_combi_prob

#Exercicio 2
quais_maior_8 <- which(dados_combi_prob$Var1 + dados_combi_prob$Var2 > 8)
soma_maior_8 <- dados_combi_prob[quais_maior_8,]
soma_maior_8

p_de_soma_mai_8 <- sum(soma_maior_8$probs_dados)
p_de_soma_mai_8

#Exercicio 3
quais_iguais <- which(dados_combi_prob$Var1 == dados_combi_prob$Var2)
face_igual <- dados_combi_prob[quais_iguais,]
face_igual

p_de_face_igual <- sum(face_igual$probs_dados)
p_de_face_igual

#Exercicio 4
quais_maior_8_igual <- intersect(soma_maior_8, face_igual)
quais_maior_8_igual

p_quais_maior_8_igual <- sum(quais_maior_8_igual$probs_dados)
p_quais_maior_8_igual

#Exercicio 5
quais_maior_8_ou_igual <- union(soma_maior_8, face_igual)
quais_maior_8_ou_igual

p_quais_maior_8_ou_igual <- sum(quais_maior_8_ou_igual$probs_dados)
p_quais_maior_8_ou_igual
paste(p_quais_maior_8_ou_igual, '%', sep = '')
