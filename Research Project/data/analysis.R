#PSY 441 Senior Capstone Reproducibility and Statistics Assignment
setwd("~/Research Project/data")
d<-read.csv("results.csv")
str (d)
d$Condition<-as.factor(d$Condition)
str (d)
table(d$Condition,d$change)
chisq.test(d$Condition, d$change)
savehistory("~/Research Project/README.md")
savehistory("~/Research Project/data/code book/Codebook.md")
d<-read.csv("rawdat.csv")
f<-ggplot(d, aes(x=Condition,y=rt))+
labs(x="Word Color Condition", y="change")+
scale_x_discrete(breaks=c("Condition","change"),labels=c("Condition","change"))+
summary(aov(rt~Condition*order+Error(sub/Condition), data=d))
showing<-sum(d$rt[d$Condition=="change"]>d$rt[d$Condition=="Condition"])
n<-length(d$rt[d$Condition=="change"])
savehistory("~/Research Project/data/analysis.R")
