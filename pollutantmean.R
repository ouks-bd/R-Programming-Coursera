
pollutantmean <-  function(directory, pollutant, id=1:10) {
  
  filelist<- list.files(path = directory,pattern = ".csv",full.names = TRUE)
  values <-numeric()
  
  for (i in id) {
    data<-read.csv(filelist[i])
    values <- c(values,data[[pollutant]])
    
        
  }
  mean(values,na.rm = TRUE)
  
}

pollutant("/Users/shoeb/Desktop/specdata","sulfate")

