#NEED error handling for when a keyword does not exist

#Left off- trying to get reactive value to show up.

library(shiny)
library(htmlwidgets)
library(ggplot2)
library(ggvis)
library(dplyr)

ui <- fluidPage(
  navbarPage("App Title",
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
                              h3(paste("Total research outputs:", rv$val1)),
                              tabsetPanel(
                                tabPanel("Plot",
                                         fluidRow(
                                           plotOutput("myPlot1"),
                                         ))))),
                   tabPanel("By Geography",
                            sidebarPanel( 
                              selectInput("Select2",
                                  label=h4("Group"),
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
  val1 <- reactval(nrow(filter(keywords, keywords == input$Select1) %>% subset(select = -c(keywords,type) )))
  
  filter2 <- reactive({
    rows2 <- nrow(filter(keywords, keywords == input$Select2) %>% subset(select = -c(keywords,type) ))
    filter(merge((filter(keywords, keywords == input$Select2) %>% subset(select = -c(keywords,type) )), keywords, by = 'doi'), type == 'group')
  })
  val2 <- reactval(nrow(filter(keywords, keywords == input$Select2) %>% subset(select = -c(keywords,type) )))
  
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
      labs(x="Geography", y= "Count of Research Uploads")
    
    p1
  })
  
  output$myPlot2 <- renderPlot({
    
    p2 <- ggplot(filter2(), aes(fct_infreq(keywords))) + #this fct_infreq sorts the bars https://stackoverflow.com/questions/5208679/order-bars-in-ggplot2-bar-graph 
      geom_bar(color='black', fill="#def2da") +
      geom_text(stat="count", aes(y = ..count..-0.5, label=..count.., size=3.5)) + #This adds the label
      theme_minimal() +
      theme(legend.position="none", plot.title = element_text(face='bold', size=20, hjust=0.5), 
            axis.title.x = element_text(face='bold', size=12),
            axis.title.y = element_text(face='bold', size=12),
            axis.text.x = element_text(angle = 45, hjust=1, size=14, face='bold')) +
      ggtitle(paste("Research Outputs Encompassing",input$Select2)) +
      labs(x="Geography", y= "Count of Research Uploads")
    
    p2
  })
}

shinyApp(ui = ui, server = server)