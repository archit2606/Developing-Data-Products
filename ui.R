library(shiny)

shinyUI(fluidPage(

    titlePanel("Predict horsepower from mpg"),

    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderMPG", "What is the mpg of the car?", 10, 35, value = 20 ),
            checkboxInput("showmodel1", "Show/Hide model 1", value = TRUE),
            checkboxInput("showmodel2", "Show/Hide model 2", value = TRUE),
            submitButton("Submit"),   ## use this only if you want a submit button in the optins
            h5("Hit the submit button to see the refreshed results ")
        ),

        mainPanel(
            plotOutput("plot1"),
            h3("Predicted horsepower from model 1 is :"),
            textOutput("pred1"),
            h3("Predicted horsepower from model 2 is :"),
            textOutput("pred2"),
        )
    )
))
