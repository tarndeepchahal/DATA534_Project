\name{get_likes}
\alias{get_likes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get the number of Likes of A Youtube Video
}
\description{
This function will return the number of like of a Youtube Video
}
\usage{
get_likes(video_url = Youtube_Video_URL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{video_url}{
URL of the Youtube Video.
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
Users need to run set_key function to access to Youtube database.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
set_key('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKACVs')
get_likes('https://www.youtube.com/watch?v=d-eUoZzFutc')
