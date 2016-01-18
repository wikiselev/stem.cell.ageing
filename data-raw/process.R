d <- as.matrix(read.table("inst/extdata/Table_all_not_normalised_SC3.txt", sep = "\t", check.names = F))
colnames(d) <- d[1,]
rownames(d) <- d[,1]
d <- d[2:dim(d)[1], 2:dim(d)[2]]
d <- d[!duplicated(rownames(d)), ]
write.table(d, file = "inst/extdata/Table_all_not_normalised_SC3-1.txt", sep = "\t", quote = F)
d <- as.matrix(read.table("inst/extdata/Table_all_not_normalised_SC3-1.txt"))
all.data <- d
save(all.data, file = "data/all.data.rda")
