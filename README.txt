CIS 6930- INTRODUCTION TO DATA MINING
README FILE FOR PROJECT

In this project we use the .R script in R Studio to get the output for the various classification algorithms for the data sets: IRIS and Life Expectancy.

The following are the packages to be installed so as to get the correct output for the functions:

install.packages("oblique.tree")install.packages("caret")install.packages("partykit")install.packages("datasets")install.packages("RWeka")install.packages("e1071")

After the function is finished running use the detach function to remove the packages:

detach("package:partykit",unload="TRUE")detach("package:oblique.tree",unload="TRUE")detach("package:caret",unload="TRUE")detach("package:datasets",unload="TRUE")detach("package:RWeka",unload="TRUE")detach("package:e1071",unload="TRUE")


The following are the functions used in the file ÒArvindhSeshadhri_49930009.RÓ file for the classification algorithms in IRIS dataset:

* Decision Tree C4.5 algorithm: decision_C4.5IRIS<-function()
* Decision Tree RIPPER algorithm: decisiontreeRIPPERIRIS<-function()
* Decision Tree Oblique tree algorithm: decisiontreeOBLIIRIS<-function()
* Na•ve Bayes algorithm: naivebayesIRIS<-function()
* kNN algorithm: knnIRIS<-function()

The following are the functions used in the file ÒArvindhSeshadhri_49930009.RÓ file for the classification algorithms in Life Expectancy dataset:

Here the dataset file is stored in my system and uses the path file for my system and so when running the functions of this dataset donÕt forget to change the directory for the myData or myData1 variables in the beginning of the function so as to get the correct output.

* Decision Tree C4.5 algorithm: decision_C4.5CONTI<-function()
* Decision Tree RIPPER algorithm: decisiontreeRIPPERCONTI<-function()
* Decision Tree Oblique tree algorithm: decisiontreeOBLICONTI<-function()
* Na•ve Bayes algorithm: naivebayesCONTI<-function()
* kNN algorithm: knnCONTI<-function()
