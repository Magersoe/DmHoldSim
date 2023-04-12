install.packages("tidyverse", dependencies = TRUE )
install.packages("XML")
install.packages("rvest")
install.packages("lubridate")


library(tidyverse)
library(XML)
library(rvest)

#Needed functions for our analysis

#######################################################
#Function for finding Delta_T for our ongoing analysis#
#######################################################


f_Delta_t <- function(Team_Data){
  Delta_t = list()
  for(i in 1:length(Team_Data)){
    Athlete_Data <- Team_Data[[i]]
    
    Athlete_Data_T <- rev(as.Date(Athlete_Data[,1], format = "%d %b %Y"))
    
    
    Delta_t_i <- difftime(Athlete_Data_T[-1], Athlete_Data_T[-length(Athlete_Data_T)], units = "days")
    
    
    Delta_t[[i]] <- Delta_t_i
  }
  return(Delta_t)
}

#Datoen for DM-Hold

#DM_Hold_Date <- "24-06-2023" 

# BVK Hold
Mathias <- read_html("http://www.cforslund.dk/lifterpopup.aspx?id=30614")
Simon_Danvil <- read_html("http://www.cforslund.dk/lifterpopup.aspx?id=1506")
Sebastian <- read_html("http://www.cforslund.dk/lifterpopup.aspx?id=30605")
Anton_Frihed <- read_html("http://www.cforslund.dk/lifterpopup.aspx?id=30395")

BVK_Hold_Data = c(Mathias %>% html_table(fill=TRUE),Simon_Danvil %>% html_table(fill=TRUE),Sebastian %>% html_table(fill=TRUE),Anton_Frihed %>% html_table(fill=TRUE)) 

BVK_Hold_Delta_t = rep(0,length(BVK_Hold_Data))

# Print the time intervals to the console
print(my_dates)
print(time_intervals)









BVK_Delta_t <- f_Delta_t(BVK_Hold_Data)

print(BVK_Delta_t[[3]])






