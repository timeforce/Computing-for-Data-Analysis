getmonitor <- function(id, directory, summarize = FALSE){
	## 'id' is a vector of length 1 indicating the monitor ID
    ## number. The user can specify 'id' as either an integer, a
    ## character, or a numeric.
        
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files

    ## 'summarize' is a logical indicating whether a summary of
    ## the data should be printed to the console; the default is
    ## FALSE
        
    ## Your code here
    id <- as.integer(id)
    if(grep("specdata", directory) == 1){
	    directory <- "C:/Users/xiaogao/Desktop/coursera/R/specdata/"}
    if(id < 10){
	      newId <- paste0("00", id) #equals to paste("00", id, sep = "")
		fileName <- paste0(newId, ".csv")
		filePath <- paste0(directory, fileName)
		data <- read.csv(file = filePath)
	} else if(id >= 10 && id <= 99) {
		newId <- paste0("0", id)
		fileName <- paste0(newId, ".csv")
		filePath <- paste0(directory, fileName)
		data <- read.csv(file = filePath)
	} else {
		fileName <- paste0(id, ".csv")
		filePath <- paste0(directory, fileName)
		data <- read.csv(file = filePath)
	}
	
    if(summarize == TRUE){
	    print(summary(data))
		data
    } else {
	data
    }

}