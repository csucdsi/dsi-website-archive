library(nycflights13)
library(sqldf)
library(ggplot2)

# Explore data and keys

## number of rows and columns
dim(flights)

## variable names
names(flights)

## other tables
names(planes)
names(weather)


# Querying Data from Tables using SQL

## Selecting columns from the airlines table
sqldf("select carrier from airlines")

## Select everything from the airlines table
sqldf("select * from airlines")

# Read in the first row, all columns, from the flights data 
sqldf("select * from flights limit 1")


# Subsetting data to only return some rows

## Select all flights from January
sqldf("select origin, dest, tailnum, dep_time
       from flights 
       where month=1")

## Select all flights out of JFK with a travel time more than an hour
sqldf("select origin, dest, air_time, distance
       from flights 
       where origin='JFK' and air_time>60")


# Generating summary values

## Number of flights in all of 2013
sqldf("select count(origin) from flights")

## Number of origin airports in all of 2013
sqldf("select count(distinct(origin)) from flights")

## Number of destination airports in all of 2013
sqldf("select count(distinct(dest)) as num_dest from flights")

## Average time in the air
sqldf("select avg(air_time) from flights") 


# Grouped summary statistics

## Average time in the air by airport
sqldf("select origin, avg(air_time) as ave_flight_time from flights group by origin")

## Which carrier has the earliest flights?
sqldf("select carrier, min(sched_dep_time) from flights group by carrier")



# Joining data from multiple tables
sqldf("select a.distance/a.air_time , b.year as model_year 
         from flights a
         left join planes b 
         on a.tailnum=b.tailnum
         limit 466, 15")

plane_speed <- sqldf("select a.distance/a.air_time , b.year as model_year 
                       from flights a
                       left join planes b 
                       on a.tailnum=b.tailnum")
ggplot(plane_speed, aes(x=model_year, y=`a.distance/a.air_time`)) + 
        geom_bin2d() + geom_smooth(se=FALSE)


###############################################################
# YOUR TURN
# Let's explore how bad travel delays are around the holidays.
###############################################################

## Select the variables day, origin, dest, dep_delay, 
## arr_delay and carrier from the flights data set, for the month of December. 
## Save the resulting data set as dec_flights
dec_flights <- sqldf("select day, origin, dest, dep_delay, arr_delay, carrier
                      from flights
                      where month = 12")



## From the dec_flights table calculate the average, and maximum daily departure delays. 
## Save this data set as dec_delays
dec_delays <- sqldf("select day, avg(dep_delay) as daily_avg_delay, 
                     max(dep_delay) as daily_max_delay
                     from dec_flights
                     group by day")



## Was weather the problem for the delays? 
## Calculate the average daily precipitation and left join it onto the dec_delays data set by date.
## Nested select statements needed!

sqldf("select *
       from (select day, avg(precip) as ave_precip
               from weather 
               where month = 12
               group by day) w 
       left join dec_delays d
       on w.day = d.day")

