3+3 #teste
hist(rnorm(100))  #random histograma
install.packages("nortest")
library(nortest) # O mesmo que por certo na janela de packages
help.search("median")  
a<-5
objects()            
b<-70
objects()
rm("b")  #remove a variavel b
mode("a") #devolve o tipo do objecto
x<-c(3,2,4) #concatenate cria um vetor
y=seq(from=2,to=6,by=2) #cria um vetor a partir de uma sequencia 
m=matrix(c(5,6,2,3),2,2) #cria uma matriz 2 por 2 preenchida coluna a coluna
log(2) # log base e

n<-matrix(c(1,2,3,4),2,2)
m*n #produto elemento a elemento
t(m) #transposta
t(m)%*%n #produto matricial
crossprod(m,n) #produto matricial
diag(m) #diagonal
diag(diag(m)) #matriz diagonal

rbind(x,y) #matriz linha a linha
cbind(x,y) #matriz coluna a coluna

alunos<-c("Maria","Joao","Pedro")
tab<-data.frame(id=c(5,6,7),nomes=alunos,prof=rep("Filo",3))
tab
attach(tab)
id
detach(tab)
tab $ nomes # obtem a coluna dos nomes em forma de vetor

cor(x,y,method = "")
quantile(c(x,5))
apply(m,1,sum) #soma linha a linha
apply(m,2,sd) #desvio padrão coluna a coluna

#example use of with and within
data(cars)
head(cars)

with(cars,mean(speed))

temp<-within(cars,assign("ratio",speed/dist))
head(temp,4)

pnorm(1,mean=1,sd=0.001)

notas<-c(12,5.3,15,7.0,17)
for (x in 1:length(notas)){
  if(notas[x]<9.5)
    print("Reprovado")
  else
    print("Aprovado")
}

gauss<-function(x,m,s){          #criação de funções
  return (1/sqrt(2*pi)*s)*exp(-0.5*((x-m)/s)^2)
}  
gauss(0,0,1)==dnorm(0,0,1)  #confirmação 

install.packages("readxl") 
library("readxl")
dados<-read_excel("imc.xlsx",sheet = 1,col_names = T)
dados<-as.data.frame(dados)
dados$escola<-factor(dados$escola,labels = c("A","B","C","D"))

dados$mgorda

dados[1:6,]
dados[1:6,4]  #quarta coluna 
dados[1:6,"panca"]  #coluna panca
mean(dados$imc)   #media do imc
dim(dados)   
str(dados)   #resumo dos dados
dados$escola
dados[dados$escola=="A",c(3,4)]
dados[dados$imc>25 & dados$sexo=="M",]

set.seed(1)  #seleção aleatoria alterada
n.amostra<-4
dados[sample(1:nrow(dados),n.amostra),]
plot(dados$escola) #histograma porque os dados são qualitativos 
plot(dados$imc)

curve(log(x)+log(1-x),from=0,to=1) #função importante
#install.packages("ggplot2")
#install.packages("rmarkdown")
#install.packages("knitr")  random packages
