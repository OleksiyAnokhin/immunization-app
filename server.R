# Oleksiy Anokhin
# January 18, 201

# Objective: build a simple Shiny app to visualize the WBG data on a simple line chart

# Sample code:
# https://plot.ly/r/shinyapp-UN-simple/

shinyServer(function(input, output, session) {
  
  output$trendPlot <- renderPlot({
    
    if (length(input$Country) == 0) {
      print("Please select at least one country")
    } else {
      trend <- dat[dat$Country == input$Country, ]
      ggplot(trend) +
        theme_fivethirtyeight() + scale_colour_fivethirtyeight() +
        geom_line(aes(y = Percentage, x = Year, colour = Country), 
                  size = 1.5, stat = "identity") +
        scale_x_continuous(breaks = seq(2003, 2016, 1)) +
        scale_y_continuous(breaks = seq(0, 100, 10)) +
        ggtitle("Immunization, DPT (% of children ages 12-23 months)") +
        labs(subtitle = "Source: The World Bank") +
        theme(legend.position = "bottom", legend.direction = "horizontal", legend.title = element_blank())
    }
    
  })
})
