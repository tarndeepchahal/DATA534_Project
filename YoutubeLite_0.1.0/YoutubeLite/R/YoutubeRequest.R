library(httr)

API_key = 'AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI'
video_id <- '9S-U5f140-U'

set_key <- function (key) {
  assign('API_key',key, envir = .GlobalEnv) 
}

get_videoId <- function (video_url) {
  n_last <- 11                                
  return(substr(video_url, nchar(video_url) - n_last + 1, nchar(video_url)))
}

youtube_request <- function (urlInput = NULL){
  
  
  if(is.null(urlInput)){
    return("No URL has been passed")
  }
  
  url <- 'https://www.googleapis.com/youtube/v3/videos?'
  part <- "statistics"
  id <- get_videoId(video_url = urlInput)
  key <- key
  
  youTubeApi <- paste0(url,"part=",part,"&","id=",id,"&","key=",key)
  
  
  
  #print(youTubeApi)
  youTubeApiRequest <- GET(youTubeApi)
  response <- content(youTubeApiRequest)
  #print((response$pageInfo$totalResults))
  
  #checkIfNoResults <- response$pageInfo$totalResults
  #if(checkIfNoResults == 0){
  #  return(0)
  #}
  
  if(class(urlInput) != "character"){
    return("Problem with the URL input : -- Input CLASS should be 'character.")
  }
  
  if(youTubeApiRequest$status_code!=200){
    stop("Problem calling the API",content(youTubeApiRequest))
  }
  #print(youTubeApiRequest$status_code)
  return(content(youTubeApiRequest))
  
}  
  
set_key('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI')



a <- youtube_request("asdasd")  
a  
  
