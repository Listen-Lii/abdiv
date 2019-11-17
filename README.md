# abdiv
For practice, calculate alpha and beta diversity from OTUs

# Usage
adiv(x)

function adiv() get alpha diversity indexes, which including Shannon, Inv_Simpson, Pielou_evenness, and Simpson_evenness indexes.

bdiv(x)

function bdiv() get beta diversity indexes, which including jaccard and bray-curtis distances.

x is the standard OTU table. Rowname is OTU, colname is sample. Data must be anundance. Presence/absence data is not suitable.


