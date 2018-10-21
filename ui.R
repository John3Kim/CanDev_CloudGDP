library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
   
   # Application title
   titlePanel("GDP Data of Cloud Computing Services and GDP of Canada"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      # Sidebar panel will consist of year/date range
      sidebarPanel(
         sliderInput("yr_range", "Year range:",
                     min = 2007, max = 2018,
                     value = c(2007,2010), 
                     sep = "", 
                     ticks = FALSE),
         p(strong("Choose a dataset to display:")),
         checkboxInput(inputId="choose_ict", 
                       label="Information and communication technology sector (Blue)", value = FALSE), 
         checkboxInput(inputId="choose_icts", 
                       label="Information and communication technology, services (Red)", value = FALSE)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("GDPPlot")
      )
   )
))

