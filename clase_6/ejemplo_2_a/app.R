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
            
            ### Dejamos el sidebarPanel sin contenido para después agregar los inputs.
        ),
        mainPanel(
           plotOutput("grafico")
        )
    )
)


#### Server

server <- function(input, output) {
    output$grafico <- renderPlot({
        # dejamos "hardcodeado" en el código la función con los parametros fijos.
        graficar(pais = "Argentina", variable = "lifeExp")
    })
}

shinyApp(ui = ui, server = server)
