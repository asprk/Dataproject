library(shiny)
shinyUI(
  pageWithSidebar(
    #Application title
    headerPanel("BMI Calculation"),
    sidebarPanel(
      numericInput('weight','Your weight in kilograms',50,min=20,max=100,step=1),
      numericInput('height','Your height in metres',1.50,min=1.00,max=2.00,step=.01),
      submitButton('Submit')
      ),
    mainPanel(
      h3('Results of calculation'),
      h5('You have entered your weight as'),
      verbatimTextOutput("inputwt"),
      h5('You have entered your height as'),
      verbatimTextOutput("inputht"),
      h5('Your estimated BMI is'),
      verbatimTextOutput("bmi")
      
      )
  )
)