# YouTubeLite

Provides basic functions to access the YouTube API via R. To learn more about the YouTube API, see <https://developers.google.com/youtube/v3/>.

### Installation

To get the current development version from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("tarndeepchahal/YouTubeLite", build_vignettes = TRUE)
```
### Using YouTubeLite

In order to use the package, a API key is required from the Google Developer Console(see <https://developers.google.com/youtube/v3/getting-started>). Make sure to enable all the YouTube APIs. Then set the API key via the `set_key()` function. For more information about YouTube authentication, see [YouTube Authentication Guide](https://developers.google.com/youtube/v3/guides/authentication).

``` r
yt_oauth("API_key")
```

**Get Number of Views of a Video**

``` r
get_views(urlInput = "cse5cCGuHmE")
```

**Get Number of Likes/Dislikes of a Video**

``` r
get_likes(urlInput = "cse5cCGuHmE")
```

**Get Number of Commented of a Video**

``` r
get_comments(urlInput = "cse5cCGuHmE")
```

**Get Video Details**
``` r
get_details(urlInput = "cse5cCGuHmE")
```

### Graphing
As each function returns a list of values, graphing the API query is very simple. In this example, we will be comparing the Likes and Dislikes on President Obama's and President Trump's State of the Union addresses. We start off by loading `ggplot2` and saving the query in an object.
``` r
library(ggplot2)
trump_url <- 'https://www.youtube.com/watch?v=exsOim0Lyl4'
obama_url <- 'https://www.youtube.com/watch?v=cse5cCGuHmE'

t_likes <- get_likes(trump_url)
o_likes <- get_likes(obama_url)
```

Following this, we create an appropriate dataframe we this queried values. 
``` r
president <- c(rep('Trump', 2), rep('Obama', 2))
condition <- c(rep(c('likes', 'dislikes'), 2))
value <- as.numeric(c(t_likes$likeCount, t_likes$dislikeCount, 
                      o_likes$likeCount, o_likes$dislikeCount))
data <- data.frame(president, condition, value)
```

Finally, we graph the dataframe we created using ggplot
``` r
ggplot(data, aes(x = president, y = value, fill = condition)) + 
  geom_bar(position = 'dodge', stat = 'identity') +
  ylim(0, 25000) + 
  xlab('President') +
  ylab('Number') +
  theme(legend.title=element_blank())
```
![](/likes.png?raw=true)
