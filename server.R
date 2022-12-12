library(shiny)

# Define server logic required to pass back dataframe
shinyServer(function(input, output) { 
    hotel_list <- reactive ({
      #reads info from sliders
      minRoom <- input$SliderRooms[1]
      maxRoom <- input$SliderRooms[2]

      #original dataset
      df <- read.csv(textConnection(
        "Name, Rank, Rooms, 
        MGM Grand, 1, 4993, 
        Mandalay Bay, 2, 4750, 
        Luxor, 3, 4397, 
        Venetian, 4, 4028,  
        Aria, 5, 4002, 
        Excalibur, 6, 3981, 
        Caesars Palace, 7, 3970, 
        Bellagio, 8, 3933, 
        Circus Circus, 9, 3974,
        Resorts World, 10, 3506,"
        ))
        df <- df[,-4]
  
        
      #reduces dataframe to keep only hotels within min/max rooms  
      df_filtered <- df[df$Rooms <= maxRoom & df$Rooms >= minRoom, ]
      print(df_filtered)
    })
    output$text1 <- renderPrint({
      hotel_list()
  })
})
