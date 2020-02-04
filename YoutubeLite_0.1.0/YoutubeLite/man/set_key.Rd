\name{set_key}
\alias{set_key}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Set YouTube API Key
}
\description{
This function uses YouTube API Key to set up access to YouTube. Users are required to register an API Key before using any other function.
}
\usage{
set_key(key=API_key)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{key}{
YouTube API key. Users need to register for an API key from the Google Developer Dashboard.
  }
}
\details{
This function sets up the provided API key as a variable that is then accessed by the other functions. This function needs to be implemented before running any other function in this package.
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
Tarndeep Chahal, Vincent Phan, Shahid Jahagirdar.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
set_key('API_KEY_VALUE')
