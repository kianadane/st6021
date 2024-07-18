CT = read.csv('Clinical_trial.csv')

anova <- (Pain_Rating~Drug, data=CT)
summary(anova)

TukeyHSD(anova,conf.level = 0.95)

# We have enough statistical evidence to conclude that the mean 
## rating for drug A can say with 95% confidence that Drug A has the least 
# pain rating among drugs A, B and C. 
## (because this is an experiment we can say that...) Drug A is more effective in treating
## migraine headaches compared to drugs B and C.

plot(TukeyHSD(anova,conf.level=0.95))

###############################################################################

