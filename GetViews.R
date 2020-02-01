source("YoutubeRequest.R")


API_key = 'AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI'
video_id <- '9S-U5f140-U'

get_likes <- function (API_key,video_id) {
  
  response <- youtube_request(API_key,video_id)
  
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  list(id = clean_res$id,
       viewCount = stats$viewCount)
}

get_likes(API_key,video_id)


