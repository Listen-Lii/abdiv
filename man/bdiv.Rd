\name{bdiv}
\alias{bdiv}
\title{Get beta diversity index}
\usage{
bdiv(x)
}
\arguments{
\item{x}{is the standard OTU table. Rowname is OTU, colname is sample. Data must be anundance. Presence/absence data is not suitable.}
}
\description{
Get beta diversity indexes, including Bray-Curtis and jaccard index.
}
\examples{
library(abdiv)
bdiv(mtcars)
}
