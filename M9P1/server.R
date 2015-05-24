fatAmount <- function(gender, height, neck, waist, hip) 
{
   if(gender == "Female")
  {
     x <- (163.205 * log10(waist + hip - neck) -97.684 * log10(height) - 104.912)
   }
  else if(gender == "Male")
  {
    x <- 86.010 * log10(waist - neck) -70.041 * log10(height) +30.30
  } 

  print(x)
}

shinyServer(
  function(input, output) {
    output$ogender <- renderPrint({input$gender})
    output$oheight <- renderPrint({input$height})
    output$oneck <- renderPrint({input$neck})
    output$owaist <- renderPrint({input$waist})
    output$ohip <- renderPrint({input$hip})

    output$prediction <- renderPrint({fatAmount(input$gender, input$height,input$neck, input$waist, input$hip)})
  }
)