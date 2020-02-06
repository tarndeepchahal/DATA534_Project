source("YoutubeRequest.R")

# This function returns a list containing the detailed information regarding a given video
get_details <- function (video_url = NULL) {
  # Check if the URL is valid
  if(is.null(video_url)){
    return("No URL has been passed")
  }
  if(class(video_url) != "character"){
    return("Problem with the URL input : -- Input CLASS should be 'character.")
  }
  # Call get_videoId function to slice the URL to only include the video ID
  id <- get_videoId(video_url)
  # Create the query using httr GET command
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'snippet', id = id, key = API_key))
  
  # Extract content from a response
  response <- content(response)
  checkIfNoResults <- response$pageInfo$totalResults
  
  if(checkIfNoResults == 0){
    return("Invalid Url Entered - No results fo this page")
  }
  
  # Return list of the detailed information of the video
  return(list(videoId = response$items[[1]]$id,
          publishedAt = response$items[[1]]$snippet$publishedAt,
          channelId = response$items[[1]]$snippet$channelId,
          title = response$items[[1]]$snippet$localized$title,
          channelTitle = response$items[[1]]$snippet$channelTitle,
          categoryId = response$items[[1]]$snippet$categoryId))
}
