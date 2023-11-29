library(shiny)
source("generare.R")
shinyServer(function(input, output, session) {

  dataInput <- reactive({
    input$iteratii
    input$culoare
    input$forma_folosita
  })
  output$plot <- renderPlot({
    chaos.gen(input$iteratii,input$culoare,input$forma_folosita)
    
  })

})

