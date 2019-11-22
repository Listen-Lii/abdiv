\name{adiv}
\alias{adiv}
\title{Get alpha diversity index from OTU tables by high-throuthput sequencing data in microbiology.
}
\usage{
adiv(x)
}
\arguments{
\item{x}{is the standard OTU table. Rowname is OTU, colname is sample. Data must be anundance. Presence/absence data is not suitable.}
}
\description{
function adiv() get alpha diversity indexes, which including Shannon, Inv_Simpson, Pielou_evenness, and Simpson_evenness indexes.}
\examples{
library(vegan)
data(varespec)
#adiv(varespec)
}
