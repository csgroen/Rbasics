## ----eval=FALSE------------------------------------------------------------
#  a<-1:10
#  b<-21:30
#  c<-81:90
#  d<-matrix(c(a,b,c), ncol=3)

## ----eval=FALSE------------------------------------------------------------
#  d[8,2]
#  d[2,3]
#  d[2:3, ]
#  d[1,]<-NA

## ----eval=FALSE------------------------------------------------------------
#  dim(d)
#  nrow(d)
#  ncol(d)

## ----eval=FALSE------------------------------------------------------------
#  mt <- matrix(1, 10, 10)
#  mt[4, 6] <- 0
#  image(mt)
#  contour(mt)
#  persp(mt, expand=0.2)

## ----eval=FALSE------------------------------------------------------------
#  a<-1:10
#  b<-letters[1:10]
#  c<-month.name[1:10]
#  d<-data.frame(a,b,c)
#  colnames(d)
#  colnames(d)<-c("ColA", "ColB", "ColC")

## ----eval=FALSE------------------------------------------------------------
#  d$ColA
#  d[["ColA"]]

## ----eval=FALSE------------------------------------------------------------
#  d[1:5,]

## ----eval=FALSE------------------------------------------------------------
#  e<-as.matrix(d)

## ----eval=FALSE------------------------------------------------------------
#  write.table(d, file="tabela.txt", quote=FALSE, sep="\t", row.names=TRUE)
#  write.csv(d, file="tabela.csv", row.names=FALSE)
#  list.files()

## ----eval=FALSE------------------------------------------------------------
#  dados1 <- read.table(file = "tabela.txt", sep="\t")
#  dados2 <- read.csv(file = "tabela.csv")

## ----eval=FALSE------------------------------------------------------------
#  a<-1:10
#  b<-matrix(runif(100), ncol=10, nrow=10)
#  c<-data.frame(ColA=a, Meses=month.name[1:10])
#  
#  my_list<-list(obj1=a, obj2=b, obj3=c)

## ----eval=FALSE------------------------------------------------------------
#  my_list$obj1

## ----eval=FALSE------------------------------------------------------------
#  my_list[1]

## ----eval=FALSE------------------------------------------------------------
#  my_list[[1]]

## ----eval=FALSE------------------------------------------------------------
#  my_list[[1]][2]

## ----eval=FALSE------------------------------------------------------------
#  per_bra<-c(4,3,4,3,2,4,4,4,14)
#  names(per_bra)<- c("Caolho", "Perneta", "Silva", "Capitão", "Zé1", "Zé2", "Zé3", "Bnigra", "DJones")

## ----eval=FALSE------------------------------------------------------------
#  mean(per_bra)
#  barplot(per_bra, xlab="Tripulantes",ylab="Pernas e bracos",cex.names=0.7)
#  abline(h = mean(per_bra), col="red",lw=2)

## ----eval=FALSE------------------------------------------------------------
#  sd(per_bra)
#  abline(h = mean(per_bra)+sd(per_bra), col="blue",lw=2)
#  abline(h = mean(per_bra)-sd(per_bra), col="blue",lw=2)

## ----eval=FALSE------------------------------------------------------------
#  median(per_bra)

## ----eval=FALSE------------------------------------------------------------
#  myfun1<-function(){
#    print("Olá! Esta é a minha primeira função")
#  }
#  myfun1()

## ----eval=FALSE------------------------------------------------------------
#  myfun2<-function(x,y){
#    x+y
#  }
#  myfun2(2,2)

## ----eval=FALSE------------------------------------------------------------
#  source("minhasFunções.R")

## ----eval=FALSE------------------------------------------------------------
#  #Começa o curso
#  swirl()

