











}

bootstrap_means<-replicate(10000,{
bootstrapped_data<-sample(OurData5$slp, replace = TRUE)
mean_calc(bootstrapped_data)
})

bootstrap_df < -data.fram(bootstrap_means)