library(shiny) 
shinyUI(
  pageWithSidebar(
    
    # Application title
    headerPanel("Body Mass Index -BMI- Estimator"),
    
    sidebarPanel(
      numericInput('Weight', 'Insert your weight in kilograms', 75) ,
      numericInput('Height', 'Insert your height in meters', 1.83, min = 0.4, max = 2.2, step = 0.01), 
      position = c("left"), fluid = TRUE
    ), 
    mainPanel(
      p('The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of kg/m2, resulting from mass in kilograms and height in metres.'),
      p('According the BMI a person can be classified as: Underweight, Normal weight, Overweight and Obsesity '),
      
      tags$div(
       
      ),
      
      h4('According the values entered:',style="color:black;"), 
      h4('Your estimated BMI is:',style="color:black;"),
      verbatimTextOutput("estimation"),
      p('You are:',style="color:black;"),strong(verbatimTextOutput("diagnostic"))
      
    )
    
  )   
)
