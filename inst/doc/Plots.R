## ----eval=FALSE------------------------------------------------------------
#  data("iris")
#  View(iris)

## ----eval=FALSE------------------------------------------------------------
#  plot(x = iris$Petal.Length,
#       y = iris$Petal.Width,
#       main = "Pétala - largura vs comprimento") # título

## ----eval=FALSE------------------------------------------------------------
#  plot(x = iris$Petal.Length,
#       y = iris$Petal.Width,
#       pch = c(21,22,23)[unclass(iris$Species)], # 'plotting character' = tipo do ponto (? points)
#       main = "Pétala - largura vs comprimento")

## ----eval=FALSE------------------------------------------------------------
#  plot(x = iris$Petal.Length,
#       y = iris$Petal.Width,
#       pch = 21,
#       bg = c("red","green3","blue")[unclass(iris$Species)], # 'background' color, só col muda a cor da borda
#       main = "Pétala - largura vs comprimento")
#  legend("bottomright", # posição da legenda
#         legend = levels(iris$Species), # o que vai na legenda
#         pt.bg = c("red","green3","blue"), # cores dos pontos
#         pch = 21,
#         bty = "n") # 'box type', n é nenhuma ('none')
#  abline(lm(Petal.Width~Petal.Length, data=iris), col="grey30") # adiciona uma linha de regressão linear

## ----eval=FALSE------------------------------------------------------------
#  pairs(iris[1:4],
#        main = "Relação par a par",
#        pch = 21,
#        bg = c("red", "green3", "blue")[unclass(iris$Species)])

## ----eval=FALSE------------------------------------------------------------
#  hist(iris$Sepal.Width)
#  hist(iris$Petal.Length)

## ----eval=FALSE------------------------------------------------------------
#  hist(iris$Sepal.Length, breaks = 6)

## ----eval=FALSE------------------------------------------------------------
#  boxplot(iris$Petal.Width~iris$Species, iris$Species,
#          col=c("pink", "yellow", "grey"),
#          ylab="Largura da pétala") # 'y label', nome do eixo y

## ----eval=FALSE------------------------------------------------------------
#  barplot(table(iris$Species))

## ----eval=FALSE------------------------------------------------------------
#  library(pheatmap)
#  rownames(iris) <- 1:nrow(iris) # adiciona 'nomes' às amostras (1 a 150)
#  pheatmap(t(iris[,1:4]), # t de 'transpose' -> transpor a matriz
#           annotation_col = data.frame(Species = iris$Species), # adicionar uma barra de anotação com info de espécie
#           show_colnames = FALSE) # esconde nomes das colunas (1 a 150)

## ----eval = FALSE----------------------------------------------------------
#  # Carrega os dados
#  data(ppi4esr1)
#  # Visualiza os dados no console
#  esr1_ppi
#  prot_annot

## ----eval = FALSE----------------------------------------------------------
#  # Chama as bibliotecas
#  library(network)
#  library(sna)
#  library(ggplot2)
#  library(GGally)
#  
#  # Cria a rede
#  net <- network(as.matrix(esr1_ppi[,1:2]), directed = FALSE)

## ----eval = FALSE----------------------------------------------------------
#  ggnet2(net)

## ----eval = FALSE----------------------------------------------------------
#  ? set.vertex.attribute
#  # Adiciona a anotação resumida
#  set.vertex.attribute(net, "cell_function", esr1_annot$short_annot)
#  # Adiciona tamanho do transcrito
#  set.vertex.attribute(net, "transcript_length", esr1_annot$tlength)
#  
#  ggnet2(net,
#         label = TRUE, # mostra os nomes
#         color = "cell_function", # mapeia cada função para uma cor do vértice
#         size = "transcript_length", # mapeia comprimento do transcrito para tamanho do vértice
#         palette = "Set2") + # muda a paleta de cores
#  guides(size = FALSE) # esconde a legenda de tamanho

## ----eval = FALSE----------------------------------------------------------
#  ? set.edge.attribute
#  
#  # Adiciona score de evidência na aresta
#  set.edge.attribute(net, "interaction", esr1_ppi$combined_score * 1.3)
#  
#  ggnet2(net,
#         label = TRUE,
#         color = "cell_function",
#         size = "transcript_length",
#         palette = "Set2",
#         edge.size = "interaction", # mapeia score combinado à largura da aresta
#         edge.color = "grey80") + # deixa as arestas cinza claro)
#    guides(size = FALSE)

## ----eval=FALSE------------------------------------------------------------
#  #Começa o curso
#  swirl()

