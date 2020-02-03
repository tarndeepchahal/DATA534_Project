\name{get_relatedVideos}
\alias{get_relatedVideos}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Return a list of videos similar to the Youtube Video provided
}
\description{
Return a list of videos similar to the Youtube Video provided
}
\usage{
get_relatedVideos(video_url = Youtube_Video_URL)
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
get_relatedVideos('https://www.youtube.com/watch?v=d-eUoZzFutc')
