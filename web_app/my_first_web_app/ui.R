#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Plotting Random Normal Distribution"),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("xnum",
                   "Number of datasets to plot:",
                   min = 2,
                   max = 300,
                   value = 100),
       
       sliderInput("xvar",
                   "Variance in x:",
                   min = 1,
                   max = 50,
                   value = 1),
       
       sliderInput("xmean",
                   "Mean in X:",
                   min = -25,
                   max = 25,
                   value = 0),
       
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
       
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Documentation",
          h3("Introduction:"),
              "this application allows you to simulate a random normal
              distribution while allowing you to change -",
          tags$ul(
            tags$li("Number of datapoints simulated"), 
            tags$li("Varience of the data simulated"), 
            tags$li("The mean of the datasimulated"),
            tags$li("Number of bins in the output Histogram")
            ),
          h3("Usage:"),
          "To use the application simply set the values of 4 variables
          using the 4 sliders in the panel on the left.",
          tags$br(),tags$br(),
          "As each value is changed the plot will be rendered using
          a new random distribution dataset",
          tags$br(),tags$br(),
          "The output plot will be visible on the plot tab (look above)"
          ),
          
        tabPanel("Plot", plotOutput("distPlot"))
      )
    )
  )
))
