corr <- function(directory,threshold = 0){
 
        completes <- complete(directory,1:332)
        correlation <- numeric()
        for(i in completes$ids)
        {
                filename <- sprintf("%03d.csv",i)
                filepath <- paste(directory,filename,sep = "/")
        
                data <- read.csv(filepath)
        
                good <- complete.cases(data)
                completeCases <- data[good]
                ##completeCases <- na.omit(data)
                if(completes[i,]$nobs>threshold)
                {       
                        correlation <- c(correlation,cor(completeCases["sulfate"],completeCases["nitrate"]))       
                }
        }
       
       correlation
}