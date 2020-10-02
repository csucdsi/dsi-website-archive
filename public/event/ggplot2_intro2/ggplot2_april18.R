# Underscores ____ are fill in the blanks. YOU have to figure out what goes in there. 

# Load library for plotting
library(ggplot2)

# load libray for demo
survey <- MASS::survey


# One categorical variable
## Barchart
ggplot(survey, aes(x=Exer)) + geom_bar()

## Proportions
ggplot(survey, aes(____)) + geom_bar(aes(y=..count../sum(..count..)))

# Cleanup
library(scales)
ggplot(____, aes(____)) +
geom_bar(aes(y=..count../sum(..count..))) + ylab("Percent") + 
scale_y_continuous(labels=percent_format())


## Pie chart
pie(table(survey$____))

## Waffle chart (replace X)
library(waffle)
waffle(table(survey$Exer)/X, rows=4, xlab="1 square = X people")

# One numeric variable
## Histograms and densities

ggplot(survey, aes(x=____)) + geom_histogram()


## YOU TRY  --- change `geom_histogram()` to `geom_density()`
## YOU TRY  ---  add both layers. What happens?


## Boxplots

boxplot(survey$Height)

## YOU TRY  --- add argument horizontal=TRUE


## Grouped barchart
ggplot(survey, aes(x=_____, fill=_____)) + geom_bar()

## YOU TRY  --- use position=dodge in the geom_bar layer to move the bars side by side



# Two numeric variables
## Scatterplot of height (y) against Age (x)

ggplot(survey, aes(_________)) + geom_point()

## YOU TRY --- Add smooth trend line in red. 
## YOU TRY --- Add a linear best fit line (method="lm") in purple, 


ggplot(survey, aes(y=Height, x=Age)) + geom_point() +
geom_smooth(col=______)


# Multivariate

## One numeric and one categorical

### Overlaid density plots of Pulse by Exersise frequency. Color by Exer. 

ggplot(survey, aes(x=____, col=___)) + geom_density() 

## YOU TRY --- Change col= to fill=. What happens? 

### Grouped boxplots Pulse (y) against Exercise (x) , fill by Exer. 

ggplot(_____, aes(x=_____, y=_____, fill=Exer)) + geom_boxplot()

## YOU TRY --- What happens if you try to do y=categorical and x=continuous? 
## YOU TRY --- Take off the fill aestetic. What else do you loose? 
## YOU TRY --- Add a layer for `coord_flip()`. What does this do? 
## YOU TRY --- Add `geom_violin()` to the above plot. 


### Paneled histograms
ggplot(survey, aes(x=Pulse, fill=Exer)) + geom_histogram() + facet_wrap(~Exer)

## YOU TRY ---  Add `ncol=1` to the `facet_wrap`. What changes? 

### Scatterplot of Pulse (y) against Age (x) grouped by Exercise status using color=

ggplot(survey, aes(x=Age, y=Pulse, color=____)) + geom_point()

## YOU TRY --- Change `color` to `shape`. 
## YOU TRY --- Add a geom_smooth()  layer
## YOU TRY --- Add a fourth dimension by paneling (`facet_wrap`) by `Smoke`

# One numerical and two categorical

## Grouped boxplots - Distribution of pulse across exercise & gender. 
## YOU TRY --- Put one categorical on the x, fill the box color by the other. 
## YOU TRY --- Then swap x and fill

ggplot(_____, aes(x=_____, y=Pulse, fill=____)) + geom________()

## YOU TRY --- now panel (facet_wrap) by smoking status category. 


# Mapping earthquakes 

library(ggmap)
fiji_map  <- get_map(location="Fiji", zoom=5)

ggmap(fiji_map) + 
  geom_point(data=quakes, aes(x=long, y=lat, col=mag)) + 
  scale_color_gradient(low="white", high="darkred")


