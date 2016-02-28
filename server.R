
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

    output$distPlot <- renderPlot({
    # load relevant packages
    library(UsingR); data(galton); library(ggplot2)
    
    # simulate data for sample size 1 to 4
    nosim <- 1000
    dat <- data.frame(
      x = c(apply(matrix(sample(1 : 6, nosim * input$bins, replace = TRUE), nosim), 1, mean)), size = input$bins) #, size = factor(rep(1 : 4, rep(nosim, 4))))

    # plot histograms of means by sample size
    g <- ggplot(dat, aes(x = x, fill = size)) + geom_histogram(alpha = .20, binwidth=.25, colour = "black")
    g + facet_grid(.~ size)
    

    

  })

})
