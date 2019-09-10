library(tidyverse)
library(shiny)
library(gapminder)

gapminder <- gapminder

# Necesito definir la función dentro del shiny.

graficar <- function(pais, variable){
    
    gapminder %>% 
        filter(country %in% pais) %>%  
        ggplot(aes_string("year", variable, color= "country"))+ 
        geom_line()+
        geom_point()
}


#### Interfaz de usuario

ui <- fluidPage(
    titlePanel("Gapminder Data"),
    
    sidebarLayout(
        sidebarPanel(
            selectizeInput(inputId ='inputPais', 
                           label='Elija los paises', 
                           choices = unique(gapminder$country), 
                           multiple = TRUE, 
                           selected = "Argentina") ,  ### noten que hay una coma que separa los diferentes inputs
            selectizeInput(inputId ='inputvariable', 
                           label='Elija la variable', 
                           choices =  c("lifeExp","pop","gdpPercap"),
                           multiple = FALSE,
                           selected = "lifeExp")
            
        ),
        mainPanel(
           plotOutput("grafico")
        )
    )
)


#### Server

server <- function(input, output) {
    output$grafico <- renderPlot({
        graficar(pais = input$inputPais, variable = input$inputvariable)
    })
}

shinyApp(ui = ui, server = server)
