\name{bdiv}
\alias{bdiv}
\title{Get beta diversity index from OTU tables by high-throuthput sequencing data in microbiology.
}
\usage{
bdiv(x)
}
\arguments{
\item{x}{is the standard OTU table. Rowname is OTU, colname is sample. Data must be anundance. Presence/absence data is not suitable.}
}
\description{
function bdiv() get beta diversity indexes, which including jaccard and bray-curtis distances.}
\examples{
library(vegan)
data(varespec)
#bdiv(varespec)
}
