#' abdiv
#' This package get alpha and beta diversity index from OTU tables by high-throuthput sequencing data in microbiology.
#' function adiv() get alpha diversity indexes, which including Shannon, Inv_Simpson, Pielou_evenness, and Simpson_evenness indexes.
#' function bdiv() get beta diversity indexes, which including jaccard and bray-curtis distances.
#' @param x is the standard OTU table. Rowname is OTU, colname is sample. Data must be anundance. Presence/absence data is not suitable.
#' examples:
#' library(vegan)
#' library(abdiv)
#' adiv(mtcars)


adiv = function(x){
  #requireNamespace(vegan)
  #library("vegan")
  x[is.na(x)] = 0
  x = t(x)
  Shannon <- diversity(x)
  Inv_Simpson <- diversity(x, "inv")
  S <- specnumber(x)
  Pielou_evenness <- Shannon/log(S)
  Simpson_evenness <- Inv_Simpson/S
  report = cbind(S, Shannon, Inv_Simpson, Pielou_evenness, Simpson_evenness)
  report
}
