library(shiny)


shinyUI(fluidPage(
  
  # Application title
  titlePanel("Normal density plot"),
  
  sidebarLayout(
    sidebarPanel(
        helpText("Adjust sliders to change mean and std of plot."),
       sliderInput("mean",
                   "Mean:",
                   min = -10,
                   max = 10,
                   value = 0, step=0.5),
       sliderInput("std",
                   "Std:",
                   min = 1,
                   max = 10,
                   value = 5, step=0.5)
    ),
    
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
