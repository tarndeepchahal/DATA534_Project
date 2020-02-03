\name{set_key}
\alias{set_key}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Setup Youtube API Key
}
\description{
This function uses Youtube API Key to set up the access to Youtube Database. Users need to register a API Key before using the function.
}
\usage{
set_key(key=API_key)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{key}{
Youtube API key, an user need to register for an API key from Youtube website
  }
}
\details{
This function will set up the authorization process to access to Youtube database by using the Youtube API provided from the user. This function need to be implemented before running any function from this package
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
set_key('AIzaSyAdy65AkdC-E8--0DYB5osklXQFQOKACVs')

