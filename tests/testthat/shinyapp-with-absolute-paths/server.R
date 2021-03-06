
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    
    # read a file on disk
    file <- read.table("C:/results.txt")
    otherFile <- read.table("/usr/local/files/files.txt")
    anotherFile <- readLines('../../foo.bar')
    serverFile <- "\\server\path\to\file"
    validWeblink <- "//www.google.com/"

    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')

  })

})
