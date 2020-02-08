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
