---
title: Measuring Variation in the Empirical Storm Season Over Time
author: Edward Roualdes
date: '2018-07-14'
slug: storm-events
categories:
  - analysis
tags:
  - storms
  - python
  - variance
description: ''
---

# Introduction

[This blog post](https://github.com/roualdes/stormevents/blob/master/stormevents.ipynb) attempts an analysis of the annual variability of dates on which storms formed during the years 1950 to 2016. Throughout, the word storm will refer to named tropical or subtropical cyclones in the Atlantic Ocean. The inspiration of this analysis came from a CSU, Chico campus seminar.

During the Fall semester of 2017, CSU, Chico's Dr. Ann Bykerk-Kauffman gave one of three talks at the Department of Geological and Environmental Sciences seminar titled 2017 Hurricane Talk. Part of Dr. Bykerk-Kauffman's presentation included data from the National Oceanic and Atmospheric Administration's National Hurricane Center's (NHC) Data Archive: https://www.nhc.noaa.gov/data/#hurdat [Landsea:2013]. After her talk, Dr. David M. Hassenzahl, Dean of the College of Natural Sciences, asked a great question, which I'll try to paraphrase: Is the variation of the empirical storm season changing over time?

One possible way to interpret the phrase variation of the empirical storm season goes like this. The official storm season is June 01 to November 30. The official storms season proves useful as a contrast to an empirical storm season. The word empirical refers to the actual dates for which the named storms in any given year form. Just because we define a storm season, does not mean all the storms form within the official storm season. Some years contain some storms outside the official storm season, and some years contain all storms within the official storm season -- as we'll see later, no year in our data set has all storms outside of the official storm season. Since there is not a direct correspondence between the official storm season and the empirical storm season, it's useful to separate these two phrases. Last, the word variation describes the average distance (measured in days) from the middle of the empirical storm season.

There are of course other ways to measure the variation of the empirical storm season. This blog post attempts to quantify the annual variation of the empirical storm season in three different ways. The first attempt follows the logic in the last paragraph. The second attempt defines a percentage of storms that form outside of the official storm season, relative to the total number of storms in each year. The last attempt hypothesizes a probability distribution that produces storms throughout the year, and then asks if this distribution of storms changes over time.

The rest of this post proceeds as follows. Section 3 discusses some related research and briefly compares this analysis to previous efforts. Section 4 walks through the data preparation necessary for our analyses. Section 5 contains the bulk of the analysis, for which multiple measurements of variation of the storm season are considered as a time series. Here, we focus on Atlantic storms from the years 1950 to 2016. However, no qualitative, and only minor quantitative, differences are found by analyzing Pacific Ocean storms simiarly. The post is concluded in Section 6, and Sections 7 and 8 offer my appreciation to those who directly and indirectly made this analysis possible.

# [Read the full analysis as an ipython notebook](https://github.com/roualdes/stormevents/blob/master/stormevents.ipynb)


