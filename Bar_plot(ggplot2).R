a <- data.frame(replicate(2,sample(0:100,5,rep=TRUE))) #####
b <- letters[1:5]                                      #####   create data frame     
dat <- data.frame(b,a)                                 #####

#     b X1 X2
#     a 60 33
#     b 58 35
#     c 65 51
#     d 38 56
#     e 66 10


library(ggplot2)
library(reshape)

dfm <- melt(dat)
ggplot(dfm,aes(x = b,y = value)) + 
geom_bar(position="dodge",stat="identity",aes(fill=variable)) + 
theme(axis.text.x=element_text(size=16,face="bold")
    , axis.title.x=element_text(size=18)
    , axis.text.y=element_text(size=16,face = "bold")
    , axis.title.y=element_text(size=18)
    , plot.title=element_text("Uns", size=20, face="bold", color="darkgreen")
    , legend.title = element_text(colour="black", size=15, face="bold")) +
labs(x = "sample",y="percent",label =FALSE) +
guides(fill=guide_legend(title="Variable",label.theme = element_text(angle = 0,size = 20))) +
ggsave("bar_plot.jpeg", width = 20, height = 20, units = "cm", dpi =1000)
