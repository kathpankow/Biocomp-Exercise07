###Question 1###
#define file to return lines from (can change settings depending on file)
file <- read.table("file_path", header=TRUE, sep=",")
#define number of lines to be returned
n <- 1
#print initial n lines to terminal
file[1:n,]

###Question 2
#load data
iris <- read.table("iris.csv", header=TRUE, sep=",")
#print last 2 rows in last 2 columns
iris[(nrow(iris)-1):nrow(iris), (ncol(iris)-1):ncol(iris)]
#get number of observations for each species
print("setosa - number of observations:")
nrow(iris[iris$Species=="setosa",])
print("versicolor - number of observations:")
nrow(iris[iris$Species=="versicolor",])
print("virginica - number of observations:")
nrow(iris[iris$Species=="virginica",])
#get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]
#write data for species setosa to "setosa.csv"
setosa <- iris[iris$Species=="setosa",]
write.table(setosa, file="setosa.csv", sep=",", col.names=TRUE)
#calculate mean, minimum, and maximum Petal.Length for virginica
print("virginica - mean petal lenth:")
mean(iris[iris$Species=="virginica",3])
print("virginica - minimum petal lenth:")
min(iris[iris$Species=="virginica",3])
print("virginica - maximum petal lenth:")
max(iris[iris$Species=="virginica",3])