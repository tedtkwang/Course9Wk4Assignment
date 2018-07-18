library(shiny)
shinyUI(fluidPage(
    titlePanel("Visualize Linear Regression Models"),
    sidebarLayout(
        sidebarPanel(
            h4("How to use this Shiny app:"),
            h5("Mouse over the graph."),
            h5("Click and drag to include >1 data points."),
            h5("Linear regression result is below:"),
            h5("Slope"),
            textOutput("slopeOut"),
            h5("Intercept"),
            textOutput("intOut")
        ),
        mainPanel(
            plotOutput("plot1", brush = brushOpts(
                id = "brush1"
            ))
        )
    )
))