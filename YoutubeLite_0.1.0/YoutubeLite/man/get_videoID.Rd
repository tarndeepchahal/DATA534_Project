\name{get_videoID}
\alias{get_videoID}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get ID of Youtube Video
}
\description{
This function retrieve the ID of a Youtuve Video from its URL.
}
\usage{
get_videoID(video_url = Youtube_Video_URL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{video_url}{
URL of the Youtube Video.
  }
}
\details{
This function retrieve the ID of a Youtuve Video from its URL. This function need to be implemented after running set_key function.
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
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
set_key('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKACVs')
get_videoID('https://www.youtube.com/watch?v=d-eUoZzFutc')
