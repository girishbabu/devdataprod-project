# The UI side component for our shiny App
# Author: Girish Babu 
# Email: contact.girishbabu@gmail.com
# Date: 22-Oct-2014

mainPanel(
  # This sets the title panel
  headerPanel('This demonstrates embedding pages using iFrame called in a Shiny server App'),
  titlePanel("Note: If no URL loads, your browser maybe blocking the IFrame; please try on a different browser then!"),
  
  # This adds the radio buttons
  radioButtons('page', 'Click to Load HTML page: ',
               c(MyFirstShinyApp='p',
                 MyRProjectOnStormDatabase='s',
                 RandomInvalidLink='i'),
               'p'),
  
  # This calls the server side component
  htmlOutput('page')
)