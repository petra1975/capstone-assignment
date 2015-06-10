#PSY 441 Senior Capstone Reproducibility and Statistics Assignment
setwd("~/Research Project/data")
d<-read.csv("results.csv")
str (d)
d$Condition<-as.factor(d$Condition)
str (d)
table(d$Condition,d$change)
chisq.test(d$Condition, d$change)
savehistory("~/Research Project/README.md")
