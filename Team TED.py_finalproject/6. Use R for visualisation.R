library("ggplot2")
library("grid")
library("showtext")
library("Cairo")
setwd("C:/Users/17417/Desktop/big data/final_visualisation")
getwd()
#實際死亡原因

mydata1<-data.frame(id=1:7,class=rep_len(1:2, length=7),Label=c("Alleged russian attacks","Chemical weapons","Attacks against hospitals","Attacks against schools","Attacks against humanitarian relief personnel","Attacks against bakeries","Attacks against journalists"),Value=c(45.3,30.7,20.4,1.8,1.4,0.2,0.2))

ggplot(mydata1)+
  geom_col(aes(x=id,y=Value/2+30,fill=factor(class)),colour=NA,width=1)+
  geom_col(aes(x=id,y=30-Value/2),fill="white",colour="white",width=1)+
  scale_x_continuous(limits=c(0,26),expand=c(0,0))+
  coord_polar(theta = "x",start=-14.275, direction = 1)
  
mydata2<-data.frame(id=1:11,class=rep_len(1:2, length=11),Label=c("Warplane shelling","Shooting","Shelling","Explosion","Mixed","Field Execution","Unknown","Chemical attacks","Other","Siege","Un-allowed to seek medical help"),Value=c(42.2,27.3,15.6,7.7,3.2,1.6,0.8,0.7,0.4,0.3,0.1))

ggplot(mydata2)+
  geom_col(aes(x=id,y=Value/2+30,fill=factor(class)),colour=NA,width=1)+
  geom_col(aes(x=id,y=30-Value/2),fill="white",colour="white",width=1)+
  scale_x_continuous(limits=c(0,26),expand=c(0,0))+
  coord_polar(theta = "x",start=-14.275, direction = 1)


