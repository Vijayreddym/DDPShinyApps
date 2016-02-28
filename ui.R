
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Simulation :- Standrand Normals of avarage of x die rolls"),

  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of with simulated 2 dices average:",
                  min = 1,
                  max = 8,
                  value = 1)
      ,
      p('How to simulate'),
      p('step 1: Use slider to increase the number dice roll'),
      p('Step 2: Watch the histogram increase it density around mean'),
      p('Step 3: and it is evident that mean is same as popoluation mean as sampling size increases.')
    ),

    #p the more data that goes into the sample mean, the more concentrated its density/mass functions are around the population mean,
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      strong("Simulation of die rolls."),
      p(''),
      p(''),
      p('This simulation demostrates that the more data that goes into the sample mean, 
        the more concentrated its density/mass functions are around the population mean and
       the histogram is also centered at 3.5. so is it 3 and 4 and concentrated aroung 3.5 as the simulation increses and resmebled bell curve')
    )
  )
))
