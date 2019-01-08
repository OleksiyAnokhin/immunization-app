# Oleksiy Anokhin
# January 18, 201

# Objective: build a simple Shiny app to visualize the WBG data on a simple line chart

# Sample code:
# https://plot.ly/r/shinyapp-UN-simple/


# UI code
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Exploring Measles Immunization"),
  
  sidebarPanel(
    # h3("Select"),
    # Select Justices name here
    selectizeInput("Country",
                   label = "Country",
                   choices = unique(dat$Country), # How to deal here now!!!!!!!!!!!!!!!!!!!!!!
                   multiple = T,
                   options = list(maxItems = 7, placeholder = 'Select a country'),
                   selected = "Ukraine"),
    # Term plot
    plotOutput("termPlot", height = 200),
    helpText("Developed by Oleksiy Anokhin")
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("trendPlot", height = 750)
  )
)
)
