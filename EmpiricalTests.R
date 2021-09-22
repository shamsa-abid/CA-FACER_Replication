#7.1 FACER's performance is evolving development stages
#precision values
basicfacerC0 <- c(0.4,0.6,0.8,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,0.6,1.0,0.4,1.0,1.0,1.0,1.0)
basicfacerC1<-c(0.4,0.4,0.2,0.8,0.8,0.4,0.4,0.4,0.0,0.0,0.8,1.0,0.6,0.4,0.6,0.4,1.0,1.0,1.0,1.0)
basicfacerC2<-c(0.2,0.6,0.4,0.6,0.8,0.8,0.8,0.8,0.6,0.4,0.6,0.6,0.2,0.4,0.2,0.0,1.0,0.4,0.6,1.0)
basicfacerC3<-c(0.2,0.0,0.4,0.4,0.2,0.2,0.2,0.2,0.4,0.6,0.4,0.4,0.8,0.2,0.8,0.4,0.0,0.6,0.4,0.0)
t.test(basicfacerC0,basicfacerC1, paired=FALSE)
t.test(basicfacerC0,basicfacerC2, paired=FALSE)
t.test(basicfacerC0,basicfacerC3, paired=FALSE)
#7.2 CA-FACER's Post filtering results
#We perform an un-paired two samples Wilcoxon test \cite{wilcoxontest} on the precision of the 20 queries
#on top 5 recommendations to test our null hypothesis which asserts that the medians of the precision values
#for baseline FACER with and without post-filtering are identical. 
#We obtain p-values of 0.012, 0.015 and 0.001
#C1
baselinefacer <-c(0.4,0.4,0.2,0.8,0.8,0.4,0.4,0.4,0.0,0.0,0.8,1.0,0.6,0.4,0.6,0.4,1.0,1.0,1.0,1.0)
postfiltering  <- c(0.4,0.6,0.2,1.0,0.8,1.0,1.0,1.0,1.0,1.0,1.0,0.6,1.0,0.4,1.0,1.0,1.0,1.0)
res <- wilcox.test(baselinefacer, postfiltering, paired = FALSE,exact=FALSE)
res
#C2
baselinefacer <-c(0.2,0.6,0.4,0.6,0.8,0.8,0.8,0.8,0.6,0.4,0.6,0.6,0.2,0.4,0.2,0.0,1.0,0.4,0.6,1.0)
postfiltering  <- c(0.2,0.6,0.4,1.0,0.8,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,0.6,0.4,0.0,1.0,0.4,1.0,1.0)
res <- wilcox.test(baselinefacer, postfiltering, paired = FALSE,exact=FALSE)
res
#C3
baselinefacer <-c(0.2,0.0,0.4,0.4,0.2,0.2,0.2,0.2,0.4,0.6,0.4,0.4,0.8,0.2,0.8,0.4,0.0,0.6,0.4,0.0)
postfiltering  <- c(0.2,0.2,0.4,1.0,0.25,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,0.2,1.0,0.4,0.6,1.0)
res <- wilcox.test(baselinefacer, postfiltering, paired = FALSE,exact=FALSE)
res
#7.5 comparison of context-aware approaches of FACER
#C1
baselinefacer <-c(0.4,0.4,0.2,0.8,0.8,0.4,0.4,0.4,0.0,0.0,0.8,1.0,0.6,0.4,0.6,0.4,1.0,1.0,1.0,1.0)
hybrid  <- c(1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,0.6,1.0,0.4,1.0,1.0,1.0,1.0)
res <- wilcox.test(baselinefacer, hybrid, paired = FALSE,exact=FALSE)
res
#C2
baselinefacer <-c(0.2,0.6,0.4,0.6,0.8,0.8,0.8,0.8,0.6,0.4,0.6,0.6,0.2,0.4,0.2,0.0,1.0,0.4,0.6,1.0)
hybrid  <- c(0.2,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,0.6,0.4,0.0,1.0,0.4,1.0,1.0)
res <- wilcox.test(baselinefacer, hybrid, paired = FALSE,exact=FALSE)
res
#C3
baselinefacer <-c(0.2,0.0,0.4,0.4,0.2,0.2,0.2,0.2,0.4,0.6,0.4,0.4,0.8,0.2,0.8,0.4,0.0,0.6,0.4,0.0)
hybrid  <- c(0.2,0.2,1.0,1.0,0.25,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,0.2,1.0,0.4,0.6,1.0)
res <- wilcox.test(baselinefacer, hybrid, paired = FALSE,exact=FALSE)
res

# 7.6 Evaluating context size
#C1G2 with C2G2
hybrid1 <-c(0.2,1.0,1.0,1.0,1.0,0.6666667,0.85714287,0.85714287,1.0,1.0,1.0,1.0,1.0,0.8,0.2,0.0,1.0,0.33333334,1.0,1.0)
hybrid2  <- c(0.2,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,0.8,0.2,0.0,1.0,0.33333334,1.0,1.0)
res <- wilcox.test(hybrid1, hybrid2, paired = FALSE,exact=FALSE)
res


#C1G3 with C3G3
hybrid1 <-c(0.1,0.2,0.0,1.0,0.0,1.0,1.0,1.0,0.85714287,1.0,1.0,0.1,0.6,0.2857143,0.33333334,1.0)
hybrid2 <- c(0.3,0.2,1.0,1.0,0.25,1.0,1.0,1.0,1.0,1.0,0.9,1.0,1.0,0.1,0.9,0.2857143,0.33333334,1.0)
res <- wilcox.test(hybrid1, hybrid2, paired = FALSE,exact=FALSE)
res
