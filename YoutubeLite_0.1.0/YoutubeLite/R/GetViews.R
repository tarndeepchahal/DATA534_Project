source("YoutubeRequest.R")


get_views <- function (urlInput=NULL) {
  
  if(is.null(urlInput)){
    return("No URL has been passed")
  }
  print(class(urlInput))
  if(class(urlInput) != "character"){
    return("Problem with the URL input : -- Input CLASS should be 'character.")
  }
  
  response <- youtube_request(urlInput = urlInput)
  
  checkIfNoResults <- response$pageInfo$totalResults
  if(checkIfNoResults == 0){
    return("Invalid Url Entered - No results fo this page")
  }
  
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  list(id = clean_res$id,
       viewCount = stats$viewCount)
}

get_views(123)


