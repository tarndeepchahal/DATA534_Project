library(httr)

# This function sets the API key as a global variable which is then used by other functions
set_key <- function (key) {
  assign('API_key',key, envir = .GlobalEnv) 
}

# This function slices the video URL to only include the video ID
get_videoId <- function (video_url) {
  # number of characters to include from the end
  n_last <- 11
  # subset the URL and return the video ID
  return(substr(video_url, nchar(video_url) - n_last + 1, nchar(video_url)))
}

# This function creates and calls the query for the YouTube API
youtube_request <- function (urlInput = NULL){
  
  # Check if the passed URL is valid
  if(is.null(urlInput)){
    return("No URL has been passed")
  }
  
  # Setup the parts of the query
  url <- 'https://www.googleapis.com/youtube/v3/videos?'
  part <- "statistics"
  id <- get_videoId(video_url = urlInput)
  key <- API_key
  
  # create the query
  youTubeApi <- paste0(url,"part=",part,"&","id=",id,"&","key=",key)
  
  # call the query
  youTubeApiRequest <- GET(youTubeApi)
  # retrieves the results of the API query
  response <- content(youTubeApiRequest)
  
  # Check if the provided URL is charcter
  if(class(urlInput) != "character"){
    return("Problem with the URL input : -- Input CLASS should be 'character.")
  }
  # check if query executed successfully 
  if(youTubeApiRequest$status_code!=200){
    stop("Problem calling the API",content(youTubeApiRequest))
  }
  
  # Return the results of the query
  return(content(youTubeApiRequest))
  
}  