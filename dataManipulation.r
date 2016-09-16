# basics of data manipulation

# a data frame is a combination of different types of variables
head(mtcars) 
tail(mtcars) 

#list, also a combination of different data types but the result is a list 
# and the vectors can be unequal
as.list(mtcars)

# Q8. How many data structures does R language have? 
# R language has Homogeneous and Heterogeneous data structures. 
# Homogeneous data structures have same type of objects – Vector, Matrix ad Array. 
# Heterogeneous data structures have different type of objects – Data frames and lists. 
  
# factor variables
gender <-c(rep("male",30),rep("female",20))
gender <- factor(gender)
table(gender); summary(gender)
ls()  # listing the current objects
rm("gender")

dim(mtcars) # python: mtcars.shape

# data import methods
# reading from a csv file
getwd()  # get current working directory
df <- read.table("C:/downloads/mydata.csv", header= T, sep=",")
df2<- read.csv("c:/downloads/mydata.csv")
df3<- read.table("c:/download/mydata.txt", header= T, sep=",")
# import excel spreadsheet
library(xlsx)    # read.xlsx function is slow for large data sets
mydata<-read.xlsx("c:/clientexcel.xlsx",sheetIndex = 1)  # a number indicating the index of the sheet to read; e.g : use sheetIndex=1 to read the first sheet

# reading from SPSS
library(Hmisc)
mydata <- spss.get("C:/mydata.sav")

# reading from sas file
library(Hmisc)
mydata<- sasxport.get("c:/mydata.xpt")

# once you import a dataset, how to check the data related dfunctions

ls() # list of objects in the working directory
names(data) # exact name of the variable
str(data) # structure of the data
levels(data$V5)

dim(data)   # no of rows and columns
head(mydata,5)

help(read.table)

# Q39 How will you read a .csv file in R language?
# read.csv () function is used to read a .csv file in R language. Below is a simple example –
# filcontent <-read.csv (sample.csv)
# print (filecontent)

# Q40 How do you write R commands?
# The line of code in R language should begin with a hash symbol (#).

# Q62 How will you combine multiple different string like “Data”, “Science”, “in” ,“R”, “Programming” as a single string “Data_Science_in_R_Programmming” ?
# paste(“Data”, “Science”, “in” ,“R”, “Programming”,sep="_")

# Q63 Write a function to extract the first name from the string “Mr. Tom White”.
# substr (“Mr. Tom White”,start=5, stop=7)

# Q54 Which function helps you perform sorting in R language?
# Order ()

# Q57 Write the syntax to set the path for current working directory in R environment.
# Setwd(“dir_path”)
