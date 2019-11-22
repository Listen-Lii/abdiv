\name{adiv}
\alias{adiv}
\title{Get alpha diversity index}
\usage{
adiv(x)
}
\arguments{
\item{x}{is the standard OTU table. Rowname is OTU, colname is sample. Data must be anundance. Presence/absence data is not suitable.}
}
\description{
Get alpha diversity indexes, including Richness, Shannon, Inv_Simpson, Pielou_evenness, and Simpson_evenness indexes.
}
\examples{
library(vegan)
adiv(mtcars)
}
