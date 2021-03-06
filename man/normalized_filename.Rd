% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/utils.r
\name{normalized_filename}
\alias{normalized_filename}
\title{Normalize a file name.}
\usage{
normalized_filename(filename)
}
\arguments{
\item{filename}{a character. The name of a file.}
}
\description{
Given a string, will check if a file by that name exists.
If not, it will try to append '.r' and try again.
If not, it will try to append '.R' and try again.
Otherwise, it returns FALSE.
}
\examples{
\dontrun{
normalize_filename('test') # will find test.r or test.R
normalize_filename('test.r') # just returns test.r
}
}

