## This is the lab for Monday, week 1. 
## Add working R code inbetween the questions
## The sections refer to the sections in https://rspatial.org/intr/index.html which will be a useful reference for the lab if you have not used R before

## Basic Data Types

## 1) create a vector with all uneven numbers between 1 and 25
a<-seq(1,25,2)
a
## 2) create, and assign to a variable, a vector with the names of four California cities 
cities <- c("Los Angeles", "Davis", "San Francisco", "Sacramento")
b<-cities
b
## 3) test whether the names in the variable created above include a space, and create a new variable with only these names
e <- cities[grepl(" ", cities)]
e
## 4) change the above created (character) variable into a categorical variable (factor)
d<-as.factor(cities)
d


## 5) create a the following sequence of 20 numbers: 5, 10, 15, ..., 100
y<-seq(5,100,5)

## Basic Data Structures


## 6) create a variable 'x' that holds this matrix (without typing in all the numbers!)
x<-matrix ( seq(5, 100, 5), nrow = 5, ncol = 4, byrow = TRUE)
x
##     [,1] [,2] [,3] [,4]
##[1,]    5   10   15   20
##[2,]   25   30   35   40
##[3,]   45   50   55   60
##[4,]   65   70   75   80
##[5,]   85   90   95  100


## 7) add, to the matrix above, a column with the values 1 to 5
q<- cbind(x, 1:5)
q
## 8) create a data.frame of the four California cities from question 2 and add two numerical variables (e.g. population) (the numbers do not matter).
population<-c(2000,3000,4000,5000)
area<-c(123, 223,323,423)
b<- data.frame(cities, population, area)
b

## 9) create a list than contains the answers to question 1, 2, 3, and 4
f<-list(a, b, e, d)
f

##################################################
##    This is the lab for Wednesday, week 1     ## 
##################################################

## Indexing

## 10) create a matrix by sub-setting matrix 'x' (question 6) by extracting the third and fourth column of 'x'
u<- x[,3:4]
u
## 11) which elements in matrix 'x' are larger than 80?
idx<- which(x > 80)
x[idx]

## Algebra

## 12) create 20 random numbers between 0 and 1 
r<- runif(20, min = 0, max = 1)
r
## 13) multiply them by 100
r * 100
## 14) create a 5 x 4 matrix 'y' of these numbers
y<- matrix(r, ncol = 4, nrow = 5, byrow = TRUE)
y
## 15) multiply this matrix with a vector of 1 to 5
y * 1:5
## 16) multiply 'y' with 'x'
y * x

## Read and Write Files

## R comes with some data sets. See `data()` for a list. These are useful for examples and exercises.  
## E.g. "state.x77"

## 17) Write the state.x77 data to a "text" file (e.g. "csv" format)
write.csv(state.x77, 'state_x77.csv')


## 18) Read the data from this file into a variable "states"
states<- read.csv("state_x77.csv", stringsAsFactors = FALSE)

## 19) What is the number of columns of state.x77 and of states? And why are they different?
ncol(state.x77) # 8
ncol(states) # 9
#the row names are not counted as variable, 
#but in csv, the row name count as a extra column so that there is 9 columns not 8 

## Data Exploration

## 20) for each variable in state.x77, use a function to compute the minimim and a function to compute the mean value 
summary(state.x77)

## 21) Use functions summary, table, quantile, and boxplot to summarize the data for life expectancy in the state.x77 data
summary(state.x77[, "Life Exp"])
table(state.x77[, "Life Exp"])
quantile(state.x77[, "Life Exp"])
boxplot(state.x77[, "Life Exp"])
