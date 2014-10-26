bmindex = function(wt,ht){return(wt/(ht*ht))}
shinyServer(
  function(input,output){
    output$inputwt=renderPrint({input$weight})
    output$inputht=renderPrint({input$height})
    output$bmi=renderPrint({bmindex(input$weight,input$height)})
  }
)