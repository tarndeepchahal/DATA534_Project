\name{get_views}
\alias{get_views}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get the number of views of a YouTube Video
}
\description{
This function returns a list that contains the video Id and the number of times the video has been watched.
}
\usage{
get_views(video_url = YouTube_Video_URL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{video_url}{
URL of the YouTube Video.
}

}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Tarndeep Chahal, Vincent Phan, Shahid Jahagirdar
}
\note{
Users first need to run the set_key function to access the YouTube API.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
get_views('https://www.youtube.com/watch?v=d-eUoZzFutc')
