shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Fat Calculator"),
    sidebarPanel(
      radioButtons('gender', 'Gender', c("Female", "Male")),
      numericInput('height', 'Height cm', 150, min = 50, max = 250, step = 1),
      numericInput('neck', 'Neck Circumference cm', 80, min = 10, max = 250, step = 1),
      numericInput('waist', 'Waist Circumference cm', 90, min = 10, max = 250, step = 1),
      numericInput('hip', 'Hip Circumference cm', 100, min = 10, max = 250, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h5('Based on US Navy Measurement Technique'),
      h4('You selected gender as'),
      verbatimTextOutput("ogender"),
      h4('You entered height as'),
      verbatimTextOutput("oheight"),
      h4('You entered neck circumference'),
      verbatimTextOutput("oneck"),
      h4('You entered waist circumference'),
      verbatimTextOutput("owaist"),
      h4('You entered hip circumference'),
      verbatimTextOutput("ohip"),
      h4('Which resulted in a prediction of Fat Percentage'),
      verbatimTextOutput("prediction")
      
    )
  )
)
