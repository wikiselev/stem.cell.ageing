pca_view <- function(d) {
    res <- prcomp(d)
    plot(res$rotation[,1], res$rotation[,2])
}

all_analysis <- function() {
    sc3(all.data, 7:9, interactivity = F)
    all.data.cpm <- cpm_norm(all.data)
    sc3(all.data.cpm, 7:9, interactivity = F)
}

rep_analysis <- function() {
    # rep1 is 978
    rep1 <- all.data[,grepl("SLX\\.978", colnames(all.data))]
    spikeins <- rownames(all.data[(dim(all.data) - 71):dim(all.data), ])
    genes <- Brennecke_getVariableGenes(rep2, spikes = spikeins)

    sc3(rep1[rownames(rep1) %in% genes, ], 2:10, interactivity = F)
    rep1.cpm <- cpm_norm(rep1)
    sc3(rep1.cpm, 2:10, interactivity = F)

    # rep2 is 977
    rep2 <- all.data[,grepl("SLX\\.977", colnames(all.data))]
    sc3(rep2, 2:10, interactivity = F)
    rep2.cpm <- cpm_norm(rep2)
    sc3(rep2.cpm, 2:10, interactivity = F)
}