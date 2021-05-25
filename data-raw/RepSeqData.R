## code to prepare `RepSeqData` dataset goes here
library(RepSeq)
# load sample data
setwd("~/PP/github/RepSeqData")
sampleData <- read.table("data-raw/sampledata.txt", sep = "\t", header = TRUE, row.names=2)
sampleData$project <- factor(sampleData$project)
sampleData$quantity <- factor(sampleData$quantity)
# create combination of above variables
sampleData$Group <- factor(paste(sampleData$project, sampleData$quantity, sep="_"))
# list files
l <- list.files("data-raw/mixcr", full.names=TRUE)
# load and create RepSeqExperiment
RepSeqData <- RepSeq::readClonotypeSet(l, 
                            cores = 2L, 
                            aligner = "MiXCR", 
                            chain = "B", 
                            sampleinfo = sampleData, 
                            keep.ambiguous = FALSE, 
                            keep.unproductive = FALSE, 
                            aa.th = 8)
# use
usethis::use_data(RepSeqData, overwrite = TRUE)
