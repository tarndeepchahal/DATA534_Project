source("YoutubeRequest.R")


# This function returns a list containing the video Id and the number of likes and dislikes on a given video
get_likes <- function (urlInput=NULL) {
  # Check if the URL is valid
  if(is.null(urlInput)){
    return("No URL has been passed")
  }
  
  if(class(urlInput) != "character"){
    return("Problem with the URL input : -- Input CLASS should be 'character.")
  }
  
  # Call youtube_request function to create and call API query
  response <- youtube_request(urlInput = urlInput)
  
  # Check if the results of the query are valid
  checkIfNoResults <- response$pageInfo$totalResults
  if(checkIfNoResults == 0){
    return("Invalid Url Entered - No results fo this page")
  }
  
  # Subset the response to only include data of interest
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  # Return a list containing the video ID and the number of likes and dislikes 
  return (list(id = clean_res$id,
       likeCount = stats$likeCount,
       dislikeCount = stats$dislikeCount))
  
}