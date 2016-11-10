library(ggplot2)
data1 <- read.csv("gene_exp_with_gene_name.diff", sep = "\t", header = T)

#ths vector passes the gene names to be tagged in plot
tags= c("Ctla4", "Ctla2b", "Il27", "Il12b","Il12a")
# Scatter plot of x and y variables and color by groups
scatterPlot <-  ggplot(data1 ,aes(log2(value_1), log2(value_2)
               ,colour=ifelse(log2.fold_change.>1,"1",log2.fold_change.<1 & log2.fold_change.>-1,"2",log2.fold_change.<-1,"3"))) +
                geom_point(size = 0.5) + 
                #scale_color_manual(breaks = c("8", "0", "-8"),values=c("red", "blue", "green"))
                scale_color_manual(name="LogFC", values = c("1"='#FF6B33',"2"='#dadada',"3"='#24c9fa')) +
                theme(legend.position=c(0,2), legend.justification=c(0,1))+scale_y_continuous(limits = c(-5,15)) +
                scale_x_continuous(limits = c(-5,15))
sp1 <-  scatterPlot+ theme_bw() + 
        labs(x = "Control NCOR1 FPKM Log2")
        labs(y = "Cpg NCOR1 FPKM Log2") + 
        labs(title = "Diff exp: Control vs Cpg") + 
        #theme_bw() theme_void() theme_classic() theme styles
sp1 <- sp1+ geom_text(aes(label=ifelse(data1$X %in% tags,as.character(X),'')),hjust=0,vjust=0,color="black")
sp1
