library(httr)

set_key <- function (key) {
  assign('API_key', key, envir = .GlobalEnv) 
}

get_videoID <- function (video_url) {
  n_last <- 11                                
  substr(video_url, nchar(video_url) - n_last + 1, nchar(video_url))
}

get_views <- function (video_url) {
  id <- get_videoID(video_url)
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'statistics', id = id, key = API_key))
  
  response <- content(response)
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  list(id = clean_res$id,
       viewCount = stats$viewCount)
}

get_likes <- function (video_url) {
  id <- get_videoID(video_url)
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'statistics', id = id, key = API_key))
  
  response <- content(response)
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  list(id = clean_res$id,
       likeCount = stats$likeCount,
       dislikeCount = stats$dislikeCount)
}

get_commentCount <- function (video_url) {
  id <- get_videoID(video_url)
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'statistics', id = id, key = API_key))
  
  response <- content(response)
  clean_res <- response$items[[1]]
  stats <- clean_res$statistics
  
  list(id = clean_res$id,
       commentCount = stats$commentCount)
}

get_details <- function (video_url) {
  id <- get_videoID(video_url)
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'snippet', id = id, key = API_key))
  
  response <- content(response)
  list(videoId = response$items[[1]]$id,
    publishedAt = response$items[[1]]$snippet$publishedAt,
    channelId = response$items[[1]]$snippet$channelId,
    title = response$items[[1]]$snippet$localized$title,
    channelTitle = response$items[[1]]$snippet$channelTitle,
    categoryId = response$items[[1]]$snippet$categoryId)
}

get_relatedVideos <- function (video_url) {
  id <- get_videoID(video_url)
  response <- GET('https://www.googleapis.com/youtube/v3/search', 
                  query = list(part ='snippet', 
                               relatedToVideoId = id, 
                               key = API_key,
                               type = 'video',
                               maxResults = 50,
                               safeSearch = 'none'))
  response <- content(response)
  
  response_df <- list()
  for (i in 1:50){
    response_df[[i]] <- list(channelTitle = response$items[[i]]$snippet$channelTitle,
                          title = response$items[[i]]$snippet$title,
                          videoId = response$items[[i]]$id$videoId,
                          channelId = response$items[[i]]$snippet$channelId,
                          publishedAt = response$items[[i]]$snippet$publishedAt)
  }
  response_df <- do.call(rbind.data.frame, 
                         lapply(response_df, as.data.frame, 
                                stringsAsFactors = FALSE))
  response_df
}

get_channelStats <- function (video_url) {
  id <- get_videoID(video_url)
  response <- GET('https://www.googleapis.com/youtube/v3/videos', query = list(part = 'snippet', id = id, key = API_key))
  
  response <- content(response)
  channel_id <- response$items[[1]]$snippet$channelId
  
  response <- GET('https://www.googleapis.com/youtube/v3/channels', 
                  query = list(part = 'statistics, snippet', 
                               id = channel_id, 
                               key = API_key))
  response <- content(response)
  
  list(channelTitle = response$items[[1]]$snippet$title,
       channelID = response$items[[1]]$id,
       viewCount = response$items[[1]]$statistics$viewCount,
       subscriberCount = response$items[[1]]$statistics$subscriberCount,
       videoCount = response$items[[1]]$statistics$videoCount)

}



#### FOR TESTING ####
# set_key('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI')
# video_id <- 'https://www.youtube.com/watch?v=-DtSrdh5dHU'

# get_views(video_id)
# get_likes(video_id)
# get_commentCount(video_id)
# get_details(video_id)
# get_relatedVideos(video_id)
# get_channelStats(video_id)


