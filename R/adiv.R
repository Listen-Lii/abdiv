#' abdiv
#' This package get alpha and beta diversity index from OTU tables by high-throuthput sequencing data in microbiology.
#' function adiv() get alpha diversity indexes, which including Shannon, Inv_Simpson, Pielou_evenness, and Simpson_evenness indexes.
#' function bdiv() get beta diversity indexes, which including jaccard and bray-curtis distances.
#' @author Shuzhen Li, just for practice
#' @param x is the standard OTU table. Rowname is OTU, colname is sample. Data must be anundance. Presence/absence data is not suitable.
#' @importFrom vegan diversity
#' @importFrom vegan specnumber
#' @importFrom vegan vegdist
#' examples:
#' library("abdiv")
#' data(varespec)
#' adiv(varespec)
#' bdiv(varespec)



adiv = function(x){
  x[is.na(x)] = 0
  x = t(x)
  Shannon <- diversity(x)
  Inv_Simpson <- diversity(x, "inv")
  S <- specnumber(x)
  Pielou_evenness <- Shannon/log(S)
  Simpson_evenness <- Inv_Simpson/S

  report = cbind(Shannon, Inv_Simpson, Pielou_evenness, Simpson_evenness)
}
