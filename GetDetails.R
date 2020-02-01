source("YoutubeRequest.R")


API_key = 'AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI'
video_id <- '9S-U5f140-U'

get_details <- function (API_key,video_id) {
  
  response <- youtube_request(API_key,video_id)
  
  list(videoId = response$items[[1]]$id,
       publishedAt = response$items[[1]]$snippet$publishedAt,
       channelId = response$items[[1]]$snippet$channelId,
       title = response$items[[1]]$snippet$localized$title,
       channelTitle = response$items[[1]]$snippet$channelTitle,
       categoryId = response$items[[1]]$snippet$categoryId)
}

get_details(API_key,video_id)




