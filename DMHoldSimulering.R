install.packages("tidyverse")
install.packages("XML")
install.packagges("rvest")

library(tidyverse)
library(XML)
library(rvest)

# BVK Hold
Mathias <- read_html("http://www.cforslund.dk/lifterpopup.aspx?id=30614")
Simon_Danvil <- read_html("http://www.cforslund.dk/lifterpopup.aspx?id=1506")
Sebastian <- read_html("http://www.cforslund.dk/lifterpopup.aspx?id=30605")
Anton_Frihed <- read_html("http://www.cforslund.dk/lifterpopup.aspx?id=30395")

BVK_Hold_Data = c(Mathias %>% html_table(fill=TRUE),Simon_Danvil %>% html_table(fill=TRUE),Sebastian %>% html_table(fill=TRUE),Anton_Frihed %>% html_table(fill=TRUE)) 

Mats_SinCLai <- 325