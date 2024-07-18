CT <- read.csv("/Users/kianadane/Documents/GitHub/st6021/'Clinical_trial.csv')

ggplot(CT, aes(x=Drug, y=Pain_rating, fill=Drug))+geom_boxplot()+ geom_jitter()

anova<- aov(Pain_Rating~Drug, data=CT)
summary(anova)





