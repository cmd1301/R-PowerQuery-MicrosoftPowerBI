setwd("C:/Users/Carlos Magno/Documents/PowerBI/Cap12")
getwd()

install.packages("dplyr")
install.packages("data.table")

library(dplyr)
library(data.table)

dados_iris <- iris

media_iris <- summarize(group_by(dados_iris, Species),
                        media_sepal_length = mean(Sepal.Length),
                        media_sepal_width = mean(Sepal.Width),
                        media_petal_length = mean(Petal.Length),
                        media_petal_width = mean(Petal.Width))

View(media_iris)

#tarefa 2 - extrair o valor inteiro de uma das colunas decimais
dados_iris_id <- data.table(dados_iris)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)
View(dados_iris_id)

#executando no Power Query
dados_iris_id <- data.table(dados_iris)
dados_iris_id$sepal.Length <- as.integer(dados_iris_id$Sepal.Length)

# tarefa 3 - Construir um gr�fico# mostrando a rela��o de duas vari�vieis num�ricas para
# as3 categoriasde uma vari�vel categ�rica
ggplot(data = dados_iris, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Largura e Comprimento das P�talas") +
  labs(x = "Largura da P�tala",
       y = "Comprimento da P�tala") +
  theme_bw() +
  theme(title = element_text(size = 15, color = "turquoise4"))