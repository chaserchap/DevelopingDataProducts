shinyServer(function(input, output) {
  mpgPred <- function(cyl,wt) 33.991 + cyl - 3.206 * wt
  output$prediction <- renderPrint({
    mpgPred(as.numeric(input$cyl),as.numeric(input$wt))
    })
})