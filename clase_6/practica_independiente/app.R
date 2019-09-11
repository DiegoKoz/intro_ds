library(tidyverse)
library(treemapify)
library(gapminder)
library(viridis)
library(glue)

gapminder <- gapminder_unfiltered


# Necesito definir la función dentro del shiny.

graficar <- function(anio,continente, variable){
    
    gapminder %>% 
        filter(year==anio, continent==continente) %>%
        ggplot(., aes_string(area = 'pop', fill = variable, label = 'country')) +
        geom_treemap() +
        geom_treemap_text(fontface = "italic", colour = "white", place = "centre",
                          grow = TRUE)+
        scale_fill_viridis(option = 'C')+
        labs(title = glue('Treemap {continente}'), 
             subtitle =glue('Año {anio}'),
             caption = glue('Tamaño según {variable}') )
}

#### Interfaz de usuario

ui <- fluidPage(
    titlePanel("Gapminder Data"),
    
    sidebarLayout(
        sidebarPanel(
            selectizeInput(inputId ='continente', 
                           label='Elija el continente', 
                           choices = unique(gapminder$continent), 
                           multiple = FALSE, 
                           selected = "Europe") ,  ### noten que hay una coma que separa los diferentes inputs
            selectizeInput(inputId ='variable', 
                           label='Elija la variable', 
                           choices =  c("lifeExp","gdpPercap"),
                           multiple = FALSE,
                           selected = "lifeExp"),
            sliderInput(inputId ='anio', 
                        label='Elija el año',
                        min = min(gapminder$year),
                        max = max(gapminder$year),
                        value = 2002,
                        step = 1,
                        animate = TRUE,
                        dragRange = FALSE
                        )
        ),
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Gráfico", plotOutput("grafico",width = "100%",height = "1000")),
                        tabPanel("Tabla", tableOutput("tabla"))
            )
            
        )
    )
)


#### Server

server <- function(input, output) {
    
    ## grafico
    output$grafico <- renderPlot({
        graficar(anio = input$anio,
                 continente =input$continente,
                 variable = input$variable)
    })
    
    ## tabla
    
    output$tabla <- renderTable({
        gapminder %>%
            filter(year==input$anio, continent==input$continente) %>%
            select(country,continent, year, input$variable )
    })
}

shinyApp(ui = ui, server = server)
