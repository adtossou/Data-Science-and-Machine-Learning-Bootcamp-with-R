# Introduction to R Basics
a <- 5%%2
a
class(a)

# vectors can take only one data type
nvec <- c(1,2,3,4,5)
nvec
class(nvec)

# can't mix up data types in a vector
v1 <- c(TRUE, 20, 40)
v1

v2 <- c(FALSE, 20, 40)
v2

v3 <- c('USA', 20, 31)
v3

class(v3)

# #### vector names
# temparatures for each week day
temps <- c(72,71,68,73,69,75,76)
temps

# assign names to each number, using the names() function
names(temps) <- c('Mon', 'Tue','Wed','Thu','Fri','Sat','Sun')
temps

days <- c('Mon', 'Tue','Wed','Thu','Fri','Sat','Sun')
days
names(temps) <- days
temps


# -------------------------
# VECTOR OPERATIONS
# -------------------------

v1 <- c(1,2,3)
v2 <- c(5,6,7)
V1 + V2
V1 - V2
V1 * V2 # element by element multiplication

sum(v1) # summation
sum.of.vec <- sum(v1)
sum.of.vec

mean(v1) # average
sd(v1) # standard deviation
max(v1) # maximum
min(v1) # minimum
prod(v1) # product of all elements in a vector
prod(v2)

# element by element vector operation
v <- c(1,2,3,4,5)
v
v2 <- c(10.20,30,40,50)
v2
v < v2 # is v less than v2? 


# -------------------------
# VECTOR INDEXING AND SLICING
# -------------------------
v1 <- c(100,200,300)
v2 <- c('a','b','c')
v1
v2

v1[2] # 2nd element in vector v1
v2[3]

v1[c(1,2)] # first and second elements in vector v1
v1[1:2]

v2[c(1,3)] # first and third elements in vector v2

# slicing
v <- c(1,2,3,4,5,6,7,8,9,10)
v[2:4] # grab 2,3, and 4
v[7:10] # grab 7, 8, 9 and 10

# indexing with names
v <- c(1,2,3,4)
names(v) <- c('a','b','c','d')
v

v[2] # select the second element of the set
v['b'] # alternatively, use the name to select the 2nd element of the set

# select multiple columns
v[c(3,4,1)]
v[c('c','d','a')]

# boolean filtering
v>2
v[v>2] # return the vector `v` where  `v` is greater than 2

my.filter <- v>2
v[my.filter]


# -------------------------
# R BASICS EXERCISE
# -------------------------

# What is two to the power of five?
2^5

# Create a vector called stock.prices with the following data points: 23,27,23,21,34
stock.prices <- c(23,27,23,21,34)

# Assign names to the price data points relating to the day of the week, starting with Mon, Tue, Wed, etc...
my.days <- c('Mon','Tues','Wed','Thu','Fri')
names(stock.prices) <- my.days
stock.prices

# What was the average (mean) stock price for the week? (You may need to reference a built-in function)
mean(stock.prices)

# Create a vector called over.23 consisting of logicals that correspond to the days where the stock price was more than $23
over.23 <- stock.prices > 23
over.23

# Use the over.23 vector to filter out the stock.prices vector and only return the day and prices where the price was over $23
stock.prices[over.23]

# Use a built-in function to find the day the price was the highest
stock.prices[stock.prices == max(stock.prices)]


