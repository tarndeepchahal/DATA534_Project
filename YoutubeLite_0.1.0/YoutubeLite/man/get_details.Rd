\name{get_details}
\alias{get_details}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get detail information about the Youtube Video
}
\description{
The functions will provide the following information about a Video : Id, Publish Date, Channel ID, Title of the Video, Channel Title, and Category Id of the video.
}
\usage{
get_details(video_url = Youtube_Video_URL)
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
get_details('https://www.youtube.com/watch?v=d-eUoZzFutc')

