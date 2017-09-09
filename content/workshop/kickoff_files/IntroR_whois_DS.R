# Author: Robin Donatello
# Date: 3/24/17
# Purpose: An Introduction to R by exploring the DS Community in Chico

# This is a comment. 


##### ----- INTRO ---- ####
# R is an over grown calculator
2+2

# With easy to use features
plot(iris$Sepal.Length)

# and functions
mean(iris$Sepal.Length)

# Often you are going to want to use functions that don't come with standard base R. So you'll need to install packages, also called libararies that contain handy functions to do things you want to do. 

# This tutorial uses the following R packages. Run the following lines one by one to load the libraries. 
library(googlesheets)
library(ggplot2)

# Don't have these packages installed yet? Replace the word NEED_PACKAGE in the line below with the package you want to install. 
install.packages("googlesheets")

##### ----- EXPLORE DS COI ---- ####

# Log in to your Google Account. 
# Go to https://docs.google.com/spreadsheets/d/112df4fi1-WsEk51A1GVY4IUUwFKEWvVJDFpwGQwzELw/edit?usp=sharing and use the icon to the right of the name to add this file to your drive. 

# Authorize R to access your google drive. 
gs_auth()

# Get the sheet info for the spreadsheet you want
sheet_info <- gs_title("DSI Kickoff RSVP (Responses)")

# read the data into a data frame named "DSCOI"
DSCOI <-  gs_read(sheet_info)

# Print this data to the screen
DSCOI

# Can't see all of it? Open it in the viewer. 

# What are our variable names? 
names(DSCOI)

# Horrible. Rename them. 
names(DSCOI) <- c("timestamp", "affiliation", "dept", "desire", "email", "favnum")

names(DSCOI)[3:4] <- c("a", "B")

names(DSCOI) # Check the names again. Trust, but verify

# What are the data types? 
str(DSCOI)

# How many different types of people do we have here today? 
table(DSCOI$affiliation)

# From what department / Field? 
table(DSCOI$dept)

# How early did people RSVP? 
# The time stamp is a character, so we first need to convert it to a date time object
DSCOI$datetime <- as.POSIXct(DSCOI$timestamp, format="%m/%d/%Y %H:%M:%S")
is(DSCOI$datetime)

# Now we can get the difference (in days) between now, and when they RSVP'd
DSCOI$diffhr <- difftime(DSCOI$datetime, Sys.time())/24

# Visualize this
hist(as.numeric(DSCOI$diffhr))

# We can do better. 
ggplot(DSCOI, aes(x=diffhr)) + geom_density() 

# How does the RSVP pattern change across user groups? 
ggplot(DSCOI, aes(x=diffhr, col=affiliation)) + geom_density() + xlab("hours") + 
  ggtitle("Number of hours ahead that participants RSVP'd")

