library(httr)

API_key = 'AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI'
video_id <- '9S-U5f140-U'

get_views <- function (key, id) {
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'statistics', id = id, key = key))
  
  response <- content(response)
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  list(id = clean_res$id,
       viewCount = stats$viewCount)
}

get_likes <- function (key, id) {
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'statistics', id = id, key = key))
  
  response <- content(response)
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  list(id = clean_res$id,
       likeCount = stats$likeCount,
       dislikeCount = stats$dislikeCount)
}

get_comments <- function (key, id) {
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'statistics', id = id, key = key))
  
  response <- content(response)
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  list(id = clean_res$id,
       commentCount = stats$commentCount)
}

get_details <- function (key, id) {
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'snippet', id = id, key = key))
  
  response <- content(response)
  list(videoId = response$items[[1]]$id,
    publishedAt = response$items[[1]]$snippet$publishedAt,
    channelId = response$items[[1]]$snippet$channelId,
    title = response$items[[1]]$snippet$localized$title,
    channelTitle = response$items[[1]]$snippet$channelTitle,
    categoryId = response$items[[1]]$snippet$categoryId)
}


get_views(API_key, video_id)
get_likes(API_key, video_id)
get_comments(API_key, video_id)
get_details(API_key, video_id)
