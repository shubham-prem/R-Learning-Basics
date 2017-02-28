# ***********   Module 2    *********** #
# clear all existing variables from console
 cat("\014") 
# clear all data variables 
rm(list=ls())


######## VECTORS #####################


#Define and extract the 3rd element of a vector 
vec1 <- c(12,4,4,6,9,3)  # define the vector 
third_elem <- vec1[3]    # extract the third element 
# display the third element 
third_elem


#####   MATRICES    #################

# Define  a 2 by 3 matrix 

A <- matrix(c(2, 4, 3, 1, 5, 7), nrow=2,ncol=3,byrow=TRUE)


# display the matrix
A


# Extracting a particular element 
A23 <- A[2, 3]      # element at 2nd row, 3rd column

# Extracting a Vector from the Matrix 
ARow2Vec <-  A[2, ]       # the 2nd row

# Extracting a Sub Matrix from the given Matrix 
A2by2 <- A[1:2,1:2]



#  Data Frames 
#Create a dataframe from vectors
n  <-  c(2,3,5)
s  <-  c("aa","bb","cc")
b  <-  c(TRUE,FALSE,TRUE)

df <-  data.frame(n,s,b)   #df is a data frame

#Display datafarme
 df

# Extract  
#> df[1,2]
#[1] aa
#Levels: aa bb cc
#> df[1,]
#n  s    b
#1 2 aa TRUE
#> df[,2]
#[1] aa bb cc
Levels: aa bb c


# Subsetting   of Data frames

# Create Building Blocks
Make  <- c("Toyota", "Hyundai","Maruti","Toyota","Hyundai","Maruti","Toyota","Hyundai","Maruti")
Model <- c("Corolla","i20","Alto","Camry","i10","Baleno","Fortuner","Sonata","Astra")
Sales <- c(345,800,2000,150,200,350,50,68,120)

# Create data frame 
CarData <- data.frame(Make,Model,Sales)

# Display Data Frame 
CarData


# SubsEt - Choose car Make and Model, Sales  for sales > 500 and list in Descending Order 

#TopSales <- subset(CarData,Sales>500,select=c(Make,Model,Sales))
TopSales <- subset(CarData,Sales>300)
Sorted_TopSales <- TopSales[order(-TopSales$Sales),]

# Display Sorted Data
Sorted_TopSales
  
  
#########   Convert between data types ############
      #   Create a Data frame from a  vector 

# The example below shows three vectors converted to 3 data frames 

df1 <- as.data.frame(c("Anish","John","Kumar"))
df2 <- as.data.frame(c("Anish2","John2","Kumar2"))
df3 <- as.data.frame(c("Anish3","John3","Kumar3"))


# Convert  Data frames to List 

#  Define List - with 3 Elements 
my.list <- vector("list", 3)



# Populate List with data frames 
my.list[[1]] <- list(df1)
my.list[[2]] <- list(df2)
my.list[[3]] <- list(df3)


# Display List
my.list

# Now convert List to dataframe 
Finaldf <- as.data.frame(my.list)

# Set Column Names 

  
  names(Finaldf) <- c("Week1","Week2","Week3")

# Display Final df
Finaldf

################################

# Module 2  Quiz 

# clear all existing variables from console
cat("\014") 
# clear all data variables 
rm(list=ls())

# STEP 1 
# Read the data file 
CarSales<- read.csv(file='CarSales.csv', header=T, sep=',')


# STEP 2 
# Short Listing Make and Model for Sales > 300 

Plus300 <- subset(CarSales,Sales>300,select = c(Make,Model))

# Display Selection 
Plus300


# Write selected set to Output file 

#  Write the data frames to csv file 
write.table(Plus300, file="Plus300.csv", sep=",", row.names=FALSE, col.names=TRUE, append=TRUE)


# Repeat the Write command 
write.table(Plus300, file="Plus300.csv", sep=",", row.names=FALSE, col.names=TRUE, append=TRUE)

