# a script for installing (if needed) and 
#loading packages for this project

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }


# create a string of package names
packages <- c('tidyverse',
              'palmerpenguins',
              'rmarkdown',
              'ggthemes',
              'RColorBrewer',
              'viridis',
              'ggdark',
              'plotly',
              'jpeg',
              'lterdatasampler',
              'rstatix',
              'lubridate',
              'dataRetrieval',
              'httr',
              'jsonlite',
              'sf',
              'mapview',
              'broom',
              'trend'
    )
# use the packageLoad function we created on those packages
packageLoad(packages)
