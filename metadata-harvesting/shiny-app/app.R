

#setwd("C:/Users/Andre/Documents/GitHub/NBIdigitalrepo/metadata-harvesting") #Comment this out before running

library(shiny)
library(htmlwidgets)
library(tidyverse)
library (plyr)
library(ggplot2)
library(ggvis) # does this need this? try deleting
library(dplyr)

ui <- fluidPage(
  tags$head(tags$title("NBI Repo Summary")),
  titlePanel( div(tags$img(src = "nbilogo-sml.jpg", div(h2("Nantucket Biodiversity Digital Repository Visualizations"))))
  ),
  tags$div(
    p("These visualizations summarize uploads to the ", tags$a(href="https://zenodo.org/communities/nantucketbiodiversity/?page=1&size=20", "Nantucket Biodiversity Digital Repository")),
    p("A research output uploaded to the repository may include several groups and several geographies. As an example, an output that involves data collection on Nantucket, but is part of a regional study will be tagged with 'nantucket' and 'new england coast'"),),
  navbarPage("",
                   tabPanel("By Group",
                            sidebarPanel(
                              selectInput("Select1",
                                          label=h4("Group"),
                                          choices=c("amphibians and reptiles",
                                                    "bacteria",
                                                    "birds",
                                                    "fish",
                                                    "flora",
                                                    "fungi",
                                                    "invasive flora",
                                                    "invertebrates",
                                                    "mammals",
                                                    "marine fauna",
                                                    "marine flora",
                                                    "non-vascular flora"),
                                          selected="invertebrates"),
                            ),
                            mainPanel(
                              h3(textOutput("val1")),
                              tabsetPanel(
                                tabPanel("Plot",
                                         fluidRow(
                                           plotOutput("myPlot1"),
                                         ))))),
                   tabPanel("By Geography",
                            sidebarPanel( 
                              selectInput("Select2",
                                  label=h4("Geography"),
                                  choices=c("cape cod",
                                         "global",
                                         "martha\'s vineyard",
                                         "massachusetts",
                                         "muskeget",
                                         "nantucket",
                                         "national",
                                         "new england coast",
                                         "cape and islands",
                                         "tuckernuck"),
                            selected="nantucket"),
                            ),
                            mainPanel(
                              h3(textOutput("val2")),
                              tabPanel("Plot",
                                      fluidRow(
                                        plotOutput("myPlot2"),
                                      ))
                    )
                   )
                   
  )

)



server <- function(input, output) {
  
  keywords <- read.csv("keywords.csv")

  
  filter1 <- reactive({
    filter(merge((filter(keywords, keywords == input$Select1) %>% subset(select = -c(keywords,type) )), keywords, by = 'doi'), type == 'geographies')
  })
  output$val1 <- renderText({
    paste0("Total research outputs: ", nrow(filter(keywords, keywords == input$Select1) %>% subset(select = -c(keywords,type) )))})
  
  filter2 <- reactive({
    rows2 <- nrow(filter(keywords, keywords == input$Select2) %>% subset(select = -c(keywords,type) ))
    filter(merge((filter(keywords, keywords == input$Select2) %>% subset(select = -c(keywords,type) )), keywords, by = 'doi'), type == 'group')
  })
  output$val2 <- renderText({
    paste0("Total research outputs: ", nrow(filter(keywords, keywords == input$Select2) %>% subset(select = -c(keywords,type) )))})
  
  
  output$myPlot1 <- renderPlot({
    
    p1 <- ggplot(filter1(), aes(fct_infreq(keywords))) + #this fct_infreq sorts the bars https://stackoverflow.com/questions/5208679/order-bars-in-ggplot2-bar-graph 
      geom_bar(color='black', fill="#def2da") +
      geom_text(stat="count", aes(y = ..count..-0.5, label=..count.., size=3.5)) + #This adds the label
      theme_minimal() +
      theme(legend.position="none", plot.title = element_text(face='bold', size=20, hjust=0.5), 
            axis.title.x = element_text(face='bold', size=12),
            axis.title.y = element_text(face='bold', size=12),
            axis.text.x = element_text(angle = 45, hjust=1, size=14, face='bold')) +
      ggtitle(paste("Research Outputs on",input$Select1)) +
      labs(x="Group", y= "Count of Research Uploads")
    
    if (dim(filter1())[1] == 0) {     #Check if there is any data to plot by looking at dimensions (rows=0?)
    
    }  else {
    p1
    }
  })
  
  output$myPlot2 <- renderPlot({
    
    p2 <- ggplot(filter2(), aes(fct_infreq(keywords))) + #this fct_infreq sorts the bars https://stackoverflow.com/questions/5208679/order-bars-in-ggplot2-bar-graph 
      geom_bar(color='black', fill="#bfebf2") +
      geom_text(stat="count", aes(y = ..count..-0.5, label=..count.., size=3.5)) + #This adds the label
      theme_minimal() +
      theme(legend.position="none", plot.title = element_text(face='bold', size=20, hjust=0.5), 
            axis.title.x = element_text(face='bold', size=12),
            axis.title.y = element_text(face='bold', size=12),
            axis.text.x = element_text(angle = 45, hjust=1, size=14, face='bold')) +
      ggtitle(paste("Research Outputs Encompassing",input$Select2)) +
      labs(x="Geography", y= "Count of Research Uploads")
    
    if (dim(filter2())[1] == 0) {     #Check if there is any data to plot
      
    }  else {
      p2
    }
  })
}

shinyApp(ui = ui, server = server)