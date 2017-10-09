library(shiny)
library(ggplot2)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
          m <- reactive({
                  m <- input$mean    
          })
          s <- reactive({
                  s <- input$std    
          })
          eq = function(x){dnorm(x,m(),s())}
          limits<-c(-30, 30)
          ggplot(data.frame(x=limits), aes(x=x)) + stat_function(fun=eq, geom="line") + xlab("x") + ylab("y")
    
  })
  
})
