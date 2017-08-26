library(shiny) 

BMI_Factor<-function(Weight,Height) {Weight/(Height^2)}

diagnostic_f<-function(Weight,Height){
  BMI_value<-Weight/(Height^2)
  ifelse(BMI_value<18.5,"Underweight",ifelse(BMI_value<25,"Normal weight",ifelse(BMI_value<30,"Overweight","Obesity")))
}


shinyServer(
  function(input, output) {
    
    output$inputweightvalue <- renderPrint({input$Weight})
    output$inputheightvalue <- renderPrint({input$Height})
    output$estimation <- renderPrint({BMI_Factor(input$Weight,input$Height)})
    output$diagnostic <- renderPrint({diagnostic_f(input$Weight,input$Height)})
  } 
)