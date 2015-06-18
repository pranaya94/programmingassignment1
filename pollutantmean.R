pollutantmean <- function(directory,pollutant="sulphate",id = 1:332){
        
        vals <- vector()
        for(i in id)  
        {
          
          
           means<-numeric(100)
          if(i<=9)
          {
                  f<-paste(c("00",i),collapse = '')
          }
          else if(i>9 && i<=99)
          {
                  f<-paste(c("0",i),collapse = '')      
          }
          else
          {
                  f<-i
          }
      
        data<-read.csv(paste(c(directory,"/",f,".csv"),collapse = ''))
        d <- data[,pollutant]
        d <- d[!is.na(d)]
        vals <- c(vals,d)
     
        
      }
       meanVal <- round(mean(vals),3)
       print(meanVal)
        
      
}



        
        
