youtube_request <- function (key,id="'9S-U5f140-U'"){
  
  url <- 'https://www.googleapis.com/youtube/v3/videos?'
  part <- "snippet"
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



API_key = 'AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI'
video_id <- '9S-U5f140-U'

get_details <- function (API_key,video_id ='9S-U5f140-U') {
  
  response <- youtube_request(API_key,video_id=video_id)
  
  list(videoId = response$items[[1]]$id,
       publishedAt = response$items[[1]]$snippet$publishedAt,
       channelId = response$items[[1]]$snippet$channelId,
       title = response$items[[1]]$snippet$localized$title,
       channelTitle = response$items[[1]]$snippet$channelTitle,
       categoryId = response$items[[1]]$snippet$categoryId)
}

get_details(API_key,video_id)




