## This is the lab for week 2 
## Add working R code in between the questions
## The functions refer to the sections in https://rspatial.org/intr/

## Functions

## 1) Write a function 'f' that behaves like this:
## > f('Jim')
## [1] "hello Jim, how are you?"
##HINT: you will need to use the paste() function within your new function
f <- function(name) {
  x <- paste0("hello ", name, ',', ' how are you?')
  return(x)
}
f('Jim')
## 2) Write a function 'sumOfSquares' that behaves like this:


## > d <- c(1,5,2,4,6,2,4,5)
## > sumOfSquares(d)
## [1] 21.875

# To compute the "sum of squares", subtract the mean value of all numbers from each number. 
# Square these numbers and sum them
# (bonus: make a variant that can handle NAs)

sumOfSquares<- function(x,na.rm=TRUE){
  m<- mean(x, na.rm=na.rm)
  sum((x-m)^2, na.rm=na.rm)
}

d<- c(1,5,2,4,6,2,4,5, NA)
sumOfSquares(d)

## Flow Control

## 4) Write a for loop that adds the numbers 1 to 10
##HINT: you will need one variable that loops through the numbers 1 to 10 and one that keeps count through each loop
x<- 0
for(i in 1:10){
  x<- x+i
}

x
## 5) Write a for loop that adds the odd numbers between 1 and 10 
s<- 0

for(x in seq(1, 10, 2) ){
  s<- s+x
}

s
