# The server side component for our shiny App
# Author: Girish Babu 
# Email: contact.girishbabu@gmail.com
# Date: 22-Oct-2014

library(UsingR)

# Function to pick the URL corresponding to the radio button selected from the UI
srcLink <- function(type) {
  switch(type,
         p = "https://girishbabu.shinyapps.io/shiny_test",
         s = "http://rpubs.com/girishbabu/repres_pa2",
         i = "https://girishbabu.shinyapps.io/devdataprod-project2")
}


shinyServer(
  function(input, output) {  
    output$page <- renderUI({
      tags$iframe(
        seamless="seamless",
        src=srcLink(input$page),
        height=860,
        width=1280)
    })
    
  }
)