

library(dplyr)
library(ggplot2)

OurData5<-OurData%>%
  mutate(Slp=as.numeric(Sleep_Hrs))

# T-test

t.test(OurData5$Slp)


# Boostrapping

mean_calc<-function(x){
  return(mean(x,na.rm=T))
}

bootstrap_means<-replicate(10000,{
bootstraped_data<-sample(OurData5$Slp, replace = TRUE)
mean_calc(bootstraped_data)
})

bootstrap_df<-data.frame(bootstrap_means)

ggplot(bootstrap_df,aes(x=bootstrap_means))+
  geom_density()

quantile(bootstrap_means, c(0.025,0.975))


prop.test(40,100,p=0.85,alternative = "l")

t.test(OurData5$Slp,mu=6, alternative = "greater")

prop.test(c(7,15),c(15,19))
