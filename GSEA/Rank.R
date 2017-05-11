x <- read.table("gene_exp.diff",sep = "\t",header = T) # "gene_exp.diff" from cuffdiff output
head(x)
x$fcsign <- sign(x$log2.fold_change.)
x$logP=-log10(x$p_value)
x$metric= x$logP/x$fcsign
y<-x[,c("Gene", "metric")]
head(y)
write.table(y,file="DE_gene.rnk",quote=F,sep="\t",row.names=F)
