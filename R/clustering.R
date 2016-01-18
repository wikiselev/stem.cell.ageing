pca_view <- function(d) {
    res <- prcomp(d)
    plot(res$rotation[,1], res$rotation[,2])
}

rep1_analysis <- function() {
    # rep1 is 978
    rep1 <- all.data[,grepl("SLX\\.978", colnames(all.data))]
    sc3(rep1, 2:10, interactivity = F)
    rep1.cpm <- cpm_norm(rep1)
    sc3(rep1.cpm, 2:10, interactivity = F)

    # rep2 is 977
    rep2 <- all.data[,grepl("SLX\\.977", colnames(all.data))]
    sc3(rep2, 2:10, interactivity = F)
    rep2.cpm <- cpm_norm(rep2)
    sc3(rep2.cpm, 2:10, interactivity = F)
}