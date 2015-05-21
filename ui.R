shinyUI(fluidPage(
  titlePanel("Mileage Predictor"),
  
  sidebarLayout(
    sidebarPanel(h2("Overview"),
                 p("By fitting a linear regression model using number of cylinders,
                   as a factor, and weight of a vehicle a rough estimate of mileage
                   can be achieved."),
                 h2("How To"),
                 p("The idea is fairly straight forward, select the number of cylinders
                   of your vehicle from the choices at the right, then enter the weight
                   of your vehicle. No submission is necessary as your estimated mileage
                   will be updated and displayed as you enter new values or make new
                   selections.")
                 ),
    mainPanel(
              radioButtons('cyl',
                           label = h3('Number of Cylinders'),
                           choices = list('4' = as.numeric(0),
                                          '6' = as.numeric(-4.256),
                                          '8' = as.numeric(-6.071))),
              numericInput('wt',
                           label = h3('Weight of Vehicle in 1000s of pounds'),
                           value = 3, min = 1.5, max = 5.5),
              h3('Your vehicle has an estimated MPG of:'),
              verbatimTextOutput("prediction"),
              verbatimTextOutput("test"))
  )
))