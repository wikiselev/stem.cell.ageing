d <- as.matrix(read.table("inst/extdata/Table_all_not_normalised_SC3.txt", sep = "\t", check.names = F))
colnames(d) <- d[1,]
rownames(d) <- d[,1]
d <- d[2:dim(d)[1], 2:dim(d)[2]]
d <- d[!duplicated(rownames(d)), ]
write.table(d, file = "inst/extdata/Table_all_not_normalised_SC3-1.txt", sep = "\t", quote = F)
d <- as.matrix(read.table("inst/extdata/Table_all_not_normalised_SC3-1.txt"))
d <- d[rowSums(d) > 0,]

ercc <- as.matrix(read.table("inst/extdata/Ercc mouse.txt", sep = "\t", check.names = F))
colnames(ercc) <- ercc[1,]
rownames(ercc) <- ercc[,1]
ercc <- ercc[2:dim(ercc)[1], 13:dim(ercc)[2]]
ercc <- ercc[!duplicated(rownames(ercc)), ]
write.table(ercc, file = "inst/extdata/Ercc mouse-1.txt", sep = "\t", quote = F)
ercc <- read.table("inst/extdata/Ercc mouse-1.txt", sep = "\t")
ercc <- ercc[rowSums(ercc) > 0,]

all.data <- rbind(d, ercc)
# remove a duplicated bam file
all.data <- all.data[,colnames(all.data) != "SLX.9775.N704_N502.bam.1"]

save(all.data, file = "data/all.data.rda")

ds <- as.matrix(read.table("inst/extdata/Table _all_downsampled_SC3.txt", sep = "\t", check.names = F))
colnames(ds) <- ds[1,]
rownames(ds) <- ds[,1]
ds <- ds[2:dim(ds)[1], 2:dim(ds)[2]]
ds <- ds[!duplicated(rownames(ds)), ]
write.table(ds, file = "inst/extdata/Table _all_downsampled_SC3-1.txt", sep = "\t", quote = F)
ds <- read.table("inst/extdata/Table _all_downsampled_SC3-1.txt", sep = "\t")
ds <- ds[rowSums(ds) > 0,]
all.data.ds <- ds

# remove a duplicated bam file
all.data <- all.data[,colnames(all.data) != "SLX.9775.N704_N502.bam.1"]

save(all.data.ds, file = "data/all.data.ds.rda")

