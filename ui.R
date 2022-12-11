
library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Vegas Hotel Rooms"),

    # Sidebar with a slider input for max/min number of rooms
    sidebarLayout(
        sidebarPanel(
          h1("Adjust Slider of Vegas Hotel Number of Rooms"),  
          sliderInput("SliderRooms",
                        "Select Number of Rooms:",
                        3506, 4993, value = c(3506, 4993))
        ),

        # Show a plot of the generated distribution
        mainPanel(
          h3("Hotel Choices:"),
          verbatimTextOutput("text1")
        )
    )
))
