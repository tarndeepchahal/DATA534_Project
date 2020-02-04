#iNSTALL PACKAGE FROM LOCAL DIRECTORY
install.packages("YoutubeLitev3_0.1.0.zip", repos = NULL, type="source")
library(YoutubeLitev3)

#### FOR TESTING ####
set_key('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKAFjI')
video_id <- 'https://www.youtube.com/watch?v=-DtSrdh5dHU'
get_views(video_id)
get_likes(video_id)
get_commentCount(video_id)
get_details(video_id)
get_relatedVideos(video_id)
get_channelStats(video_id)

