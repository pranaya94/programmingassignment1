complete <- function(directory,id = 1:332){
        
        vals <- vector()
        ids <- vector()
        nobs <- vector()
        j <- 1
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
                good<-complete.cases(data)
                completeData <- data[good,]
                ids[j] <- i
                nobs[j] <- nrow(completeData)
                j <- j+1
                
                
        }
        
        answer <- data.frame(ids,nobs)
        
        ##print(answer)
        answer
        
}





