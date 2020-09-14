
#I could not get zen4R (https://github.com/eblondel/zen4R/wiki#ZenodoRecord-getrecords) to work It puts the data in an R6 class list

#install.packages("rjson") #I decided not to use this one
#install.packages("jsonlite")
#install.packages("httr")


library("jsonlite")
library("httr")
library(tidyr)
library(tidyverse)
library (plyr)
library(ggplot2)
library(gghighlight)

setwd("C:/Users/Andre/Documents/GitHub/NBIdigitalrepo/metadata-harvesting")


#-----------------------------------------------------
#Gather data

#This gets up to 100 records
res = GET('https://zenodo.org/api/records/?communities=nantucketbiodiversity&size=100&page=1')

jsonToSave <- rawToChar(res$content)

# save JSON file 
date <- Sys.Date() #Get today's date to write into the file
write(jsonToSave, paste0("nbiRepository-",date,".json"))

#Convert to an accessible form.
df = fromJSON(rawToChar(res$content))


#------------------------------------------------------
#OPEN EXISTING FILE if running a new download! Open a previous json file
df <- fromJSON("nbiRepository-2020-09-11.json")




#-------------------------------------------------------
#Set up data file to use in shiny-app or create charts here

#Good info on working with the data: https://stackoverflow.com/questions/20925492/how-to-import-json-into-r-and-convert-it-to-table
#also this medium post: https://blog.exploratory.io/working-with-json-data-in-very-simple-way-ad7ebcc0bb89

#Get list of keywords:
#colnames(df) #notice things are nested or are maybe dataframes within dataframes

metdf <- df$metadata

keydf <- metdf %>% unnest(keywords) %>% select(doi, keywords) #This lists the dois and number of keywords

#Import a categorized list of keywords:
keycat = read.csv("controlledVocab.csv")

keywords <- (merge(keycat, keydf, by = 'keywords'))

write.csv(keywords, "keywords.csv")
write.csv(keywords, "shiny-app/keywords.csv") #save a copy for shiny-app

#To update shiny-app, open app.R and send to R server.
#Or contunue below to make charts


#-------------------------------------------------------------------

#SET UP THE FIRST CHART- user selects a group and then sees a chart by geography and the number of dois represented

filter1 <- filter(keywords, 
                      keywords == 'mammals') %>% subset(select = -c(keywords,type) )

#Number of dois with the filter1 term
rows1 <- nrow(filter1)

#Join with keywords to get all the keywords for the dois that match filter1 
dfchart1 <- (merge(filter1, keywords, by = 'doi'))

#select only geographies

filter2 <- filter(dfchart1, 
                  type == 'geographies')

#Piped- This is used in the shiny app
#test <- filter(merge((filter(keywords, keywords == 'mammals') %>% subset(select = -c(keywords,type) )), keywords, by = 'doi'), type == 'geographies')

#Count occurances
#chart1 <- filter2 %>%
#  group_by(keywords) %>%
#  tally()
#Sort descending
#chart1 <- chart1[order(-chart1$n),]
#Chart it
#barplot(chart1$n)
#ggplot(chart1, aes(x=keywords, y=n)) +  
#  geom_bar( stat='identity')

ggplot(filter2, aes(fct_infreq(keywords))) + #this fct_infreq sorts the bars https://stackoverflow.com/questions/5208679/order-bars-in-ggplot2-bar-graph 
  geom_bar(color='black', fill="#def2da") +
  geom_text(stat="count", aes(y = ..count..-0.5, label=..count.., size=3.5)) + #This adds the
  theme_minimal() +
  theme(legend.position="none", plot.title = element_text(face='bold', size=14, hjust=0.5), 
        axis.title.x = element_text(face='bold', size=12),
        axis.title.y = element_text(face='bold', size=12),
        axis.text.x = element_text(angle = 45, hjust=1, size=14, face='bold')) +
  ggtitle(paste("Research Outputs on (fill in)"))+ #)) +
  labs(x="Geography", y= "Count of Uploads")
  labs(title = "Research Outputs on (fill in)", x="Geography", y= "Count of Uploads")


#-------------------------------------------------------------------

#SET UP THE SENCOND CHART- user selects a geography and then sees a chart by group and the number of dois represented

filter1a <- filter(keywords, 
                  keywords == 'nantucket') %>% subset(select = -c(keywords,type) )

#Number of dois with the filter1 term
rows1a <- nrow(filter1a)

#Join with keywords to get all the keywords for the dois that match filter1 
dfchart1a <- (merge(filter1a, keywords, by = 'doi'))

#select only geographies

filter2a <- filter(dfchart1a, 
                  type == 'group')

#Piped- This is used in the shiny app
#test <- filter(merge((filter(keywords, keywords == 'mammals') %>% subset(select = -c(keywords,type) )), keywords, by = 'doi'), type == 'group')


#Count occurances
#chart1a <- filter2a %>%
#  group_by(keywords) %>%
#  tally()
#Sort descending
#chart1a <- chart1a[order(-chart1a$n),]
#Chart it
#barplot(chart1a$n)

ggplot(filter2a, aes(fct_infreq(keywords))) + #this fct_infreq sorts the bars https://stackoverflow.com/questions/5208679/order-bars-in-ggplot2-bar-graph 
  geom_bar(color='black', fill="#d0edf2") +
  geom_text(stat="count", aes(y = ..count..-0.5, label=..count.., size=3.5)) + #This adds the
  theme_minimal() +
  theme(legend.position="none", plot.title = element_text(face='bold', size=14, hjust=0.5), axis.text.x = element_text(angle = 45, hjust=1)) +
  labs(title = "Research Outputs encompassing (fill in)", x="Geography", y= "Count of Uploads")
