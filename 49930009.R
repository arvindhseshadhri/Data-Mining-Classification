decision_C4.5IRIS<-function()
{
  
library(caret)
set.seed(4909)
data(iris)
str(iris)
ind <- createDataPartition(iris$Species, p = .8,
                           list = FALSE,
                           times = 1)
trainData <- iris[ind,]
testData <- iris[-ind,]
summary(trainData)
summary(testData)
library(RWeka)
library(datasets)
data("iris")
iris_ctree <- J48(Species~., data=trainData)
table(predict(iris_ctree), trainData$Species)
print(iris_ctree)
plot(iris_ctree)
summary(iris_ctree)
testPred <- predict(iris_ctree, newdata = testData)
table(testPred, testData$Species)
plot(testPred)
}
decision_C4.5CONTI<-function()
{
  
myData <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/life_expectancy.csv", header=TRUE, sep=",")
str(myData)
library(caret)
set.seed(4909)
indconti <- createDataPartition(myData$Continent, p = .8,
                                list = FALSE,
                                times = 1)
trainData1 <- myData[indconti,]
testData1 <- myData[-indconti,]
summary(trainData1)
summary(testData1)
library(RWeka)
library(datasets)
conti_ctree <- J48(Continent~., data=trainData1)
table(predict(conti_ctree), trainData1$Continent)
print(conti_ctree)
library(partykit)
plot(conti_ctree)
summary(conti_ctree)
testPred1 <- predict(conti_ctree, newdata = testData1)
table(testPred1, testData1$Continent)
plot(testPred1)
}
decisiontreeRIPPERIRIS<-function()
{
  
library(caret)
set.seed(4909)
library(RWeka)
data(iris)
ind3 <- createDataPartition(iris$Species, p = .8,
                            list = FALSE,
                            times = 1)
trainData4 <- iris[ind3,]
testData4 <- iris[-ind3,]
summary(trainData4)
summary(testData4)
library(datasets)
data("iris")
iris_jrip <- JRip(Species~.,data=trainData4)
pred<-predict(iris_jrip,data=trainData4)
print(iris_jrip)
plot(pred)
summary(iris_jrip)
prediction<-predict(iris_jrip, newdata=testData4)
table(prediction,testData4$Species)
plot(prediction)
}
decisiontreeRIPPERCONTI<-function()
{
  
myData1 <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/life_expectancy.csv", header=TRUE, sep=",")
str(myData1)
library(caret)
set.seed(4909)
library(RWeka)
ind3 <- createDataPartition(myData1$Continent, p = .8,
                            list = FALSE,
                            times = 1)
trainData4 <- myData1[ind3,]
testData4 <- myData1[-ind3,]
summary(trainData4)
summary(testData4)
library(datasets)
myData1_jrip <- JRip(Continent~.,data=trainData4)
pred<-predict(myData1_jrip,data=trainData4)
print(myData1_jrip)
plot(pred)
summary(myData1_jrip)
prediction<-predict(myData1_jrip, newdata=testData4)
table(prediction,testData4$Continent)
plot(prediction)
}
decisiontreeOBLIIRIS<-function()
{
  
library(caret)
set.seed(4909)
ind<-createDataPartition(iris$Species, p = .8,
                         list = FALSE,
                         times = 1)
Traindata2 <- iris[ ind,]
Testdata2  <- iris[-ind,]
summary(Traindata2)
summary(Testdata2)
library(oblique.tree)
library(datasets)
iris_ob <- oblique.tree(Species~., data=Traindata2,oblique.splits = "only")
pred<-predict(iris_ob,data=Traindata2)
print(iris_ob)
plot(iris_ob)
text(iris_ob)
summary(iris_ob)
iris_ob1 <- oblique.tree(formula=Species~., data=Testdata2,oblique.splits = "only")
pred2<-predict(iris_ob1,data=Testdata2)
print(iris_ob1)
plot(iris_ob1)
text(iris_ob1)
}
decisiontreeOBLICONTI<-function()
{
  
myData1 <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/life_expectancy.csv", header=TRUE, sep=",")
str(myData1)
library(caret)
set.seed(4909)
ind<-createDataPartition(myData1$Continent, p = .8,
                         list = FALSE,
                         times = 1)
myvars <- names(myData1) %in% c("Country") 
newdata <- myData1[!myvars]
Traindata2 <- newdata[ ind,]
Testdata2  <- newdata[-ind,]
summary(Traindata2)
summary(Testdata2)
library(oblique.tree)
library(datasets)
iris_ob <- oblique.tree(Continent~., data=Traindata2,oblique.splits = "only")
pred<-predict(iris_ob,data=Traindata2)
print(iris_ob)
plot(iris_ob)
text(iris_ob)
summary(iris_ob)
iris_ob1 <- oblique.tree(Continent~., data=Testdata2,oblique.splits = "only")
pred2<-predict(iris_ob1,data=Testdata2)
print(iris_ob1)
plot(iris_ob1)
text(iris_ob1)
}
naivebayesIRIS<-function()
{
  
library(caret)
set.seed(4909)
ind<-createDataPartition(iris$Species, p = .8,
                         list = FALSE,
                         times = 1)
Traindata2 <- iris[ ind,]
Testdata2  <- iris[-ind,]
summary(Traindata2)
summary(Testdata2)
library(RWeka)
library(datasets)
library(e1071)
nb<-naiveBayes(Species~., data=Traindata2) 
table(predict(nb, Traindata2), Traindata2$Species)
print(nb)
summary(nb)
testPred2 <- predict(nb, newdata=Testdata2)
table(testPred2, Testdata2$Species)
plot(testPred2)
}
naivebayesCONTI<-function()
{
  
myData1 <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/life_expectancy.csv", header=TRUE, sep=",")
str(myData1)
library(caret)
set.seed(4909)
ind<-createDataPartition(myData1$Continent, p = .8,
                         list = FALSE,
                         times = 1)
Traindata3 <- myData1[ ind,]
Testdata3  <- myData1[-ind,]
summary(Traindata3)
summary(Testdata3)
library(RWeka)
library(datasets)
library(e1071)
nb1<-naiveBayes(Continent~., data=Traindata3) 
table(predict(nb1, Traindata3), Traindata3$Continent)
print(nb1)
summary(nb1)
testPred3 <- predict(nb1, newdata=Testdata3)
table(testPred3, Testdata3$Continent)
plot(testPred3)
}
knnIRIS<-function()
{
  
library(caret)
set.seed(4909)
ind<-createDataPartition(iris$Species, p = .8,
                         list = FALSE,
                         times = 1)
Traindata2 <- iris[ ind,]
Testdata2  <- iris[-ind,]
summary(Traindata2)
summary(Testdata2)
library(RWeka)
library(datasets)
iris_pred <- IBk(Species~., data=Traindata2)
pred<-predict(iris_pred,data=Traindata2)
print(iris_pred)
plot(pred)
summary(iris_pred)
prediction<-predict(iris_pred, newdata=Testdata2)
summary(prediction)
summary(Testdata2$Species)
table(prediction,Testdata2$Species)
plot(prediction)
}
knnCONTI<-function()
{
  
myData1 <-read.csv(file="/Users/ArvindhS/Classes/Intro to Data Mining/life_expectancy.csv", header=TRUE, sep=",")
str(myData1)
library(caret)
set.seed(4909)
ind<-createDataPartition(myData1$Continent, p = .8,
                         list = FALSE,
                         times = 1)
Traindata2 <- myData1[ ind,]
Testdata2  <- myData1[-ind,]
summary(Traindata2)
summary(Testdata2)
library(RWeka)
library(datasets)
cont_pred <- IBk(Continent~., data=Traindata2)
pred<-predict(cont_pred,data=Traindata2)
print(cont_pred)
plot(pred)
summary(cont_pred)
prediction<-predict(cont_pred, newdata=Testdata2)
table(prediction,Testdata2$Continent)
plot(prediction)
}