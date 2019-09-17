library(tidyverse)
library(ggthemes)
library(lubridate)

pasajeros <- read_rds('fuentes/pases_subte_201801.rds')

colores <- c('LINEA_A'='#00ADDE',
             'LINEA_B'='#FF0000',
             'LINEA_C'='#005BB3',
             'LINEA_D'='#56B09B',
             'LINEA_E'='#76007C',
             'LINEA_H'='#FFDB00')

names(pasajeros)

nrow(pasajeros)

summary(pasajeros)

glimpse(pasajeros)
           
pasajeros %>% 
  group_by(linea) %>% 
  summarise(total_pasajeros_mes = sum(totales)) %>% 
  arrange(-total_pasajeros_mes)
  
pasajeros %>% 
  top_n(10, wt = promedio) %>% 
  arrange(-promedio)

pasajeros %>% 
  ggplot(.,aes(x = linea, y = promedio, fill= linea)) +
  geom_violin()+
  geom_boxplot(alpha=0.75, fill=NA)+
  theme_tufte()+
  theme(legend.position = 'none')+
  scale_fill_manual(values = colores)

pasajeros %>% 
  group_by(desde, hasta, linea) %>% 
  summarise(totales=sum(totales)) %>% 
  ggplot(., aes(fill = linea))+
  geom_rect(aes(xmin=desde, xmax=hasta, ymin=0, ymax= totales))+
  theme_tufte()+
  theme(legend.position = 'none')+
  scale_x_time(limits = c(min(pasajeros$desde), max(pasajeros$hasta)))+
  scale_fill_manual(values = colores)+
  facet_wrap(.~linea, scales = 'free')
