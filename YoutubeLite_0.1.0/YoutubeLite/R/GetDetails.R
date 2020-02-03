library(httr)

set_key <- function (key) {
  assign('API_key',key, envir = .GlobalEnv) 
}

set_key('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI')

get_videoId <- function (video_url) {
  n_last <- 11                                
  return(substr(video_url, nchar(video_url) - n_last + 1, nchar(video_url)))
}


get_details <- function (video_url=NULL) {
  if(is.null(video_url)){
    return("No URL has been passed")
  }
  if(class(video_url) != "character"){
    return("Problem with the URL input : -- Input CLASS should be 'character.")
  }
  
  id <- get_videoId(video_url)
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'snippet', id = id, key = API_key))
  
  response <- content(response)
  checkIfNoResults <- response$pageInfo$totalResults
  
  if(checkIfNoResults == 0){
    return("Invalid Url Entered - No results fo this page")
  }
  
  
  list(videoId = response$items[[1]]$id,
       publishedAt = response$items[[1]]$snippet$publishedAt,
       channelId = response$items[[1]]$snippet$channelId,
       title = response$items[[1]]$snippet$localized$title,
       channelTitle = response$items[[1]]$snippet$channelTitle,
       categoryId = response$items[[1]]$snippet$categoryId)
}



get_details()



