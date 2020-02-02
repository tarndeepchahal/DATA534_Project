library(httr)

API_key = 'AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI'
video_id <- '9S-U5f140-U'

youtube_request <- function (key,id='9S-U5f140-U'){
  
  url <- 'https://www.googleapis.com/youtube/v3/videos?'
  part <- "statistics"
  id <- id
  key <- key
  
  youTubeApi <- paste0(url,"part=",part,"&","id=",id,"&","key=",key)
  
  if(class(id) != "character"){
    stop("Problem with the id input : ",id, "-- Input CLASS should be 'character'. ie. '9S-U5f140-U'")
  }
  
  if(is.null(id)){
    stop("Problem with the id input : ",id, "-- Input LENGTH should be '1'. ie. '9S-U5f140-U'")
  }
  
  #print(youTubeApi)
  youTubeApiRequest <- GET(youTubeApi)
  
  if(youTubeApiRequest$status_code!=200){
    stop("Problem calling the API",content(youTubeApiRequest))
  }
  return(content(youTubeApiRequest))
  
}  
  
#a <- youtube_request(API_key,video_id)  
#a  
  
