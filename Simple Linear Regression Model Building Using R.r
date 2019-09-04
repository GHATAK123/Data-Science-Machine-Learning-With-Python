
bonds <- read.delim('bonds.txt',row.names=1)

head(bonds)

tail(bonds)

str(bonds) # This function shows each variables with their corresponding data types or structure of dataframe

summary(bonds) #Description of dataframe

plot(bonds$CouponRate,bonds$BidPrice,main="Bid Price vs Coupon Rate",xlab="Coupon Rate",ylab="Bid Rate") 
# Visualization of each points in dataset

bondsmod=lm(bonds$BidPrice~bonds$CouponRate)

bondsmod=lm(BidPrice~CouponRate,data=bonds)

plot(bonds$CouponRate,bonds$BidPrice,main="Bid Price vs Coupon Rate",xlab="Coupon Rate",ylab="Bid Rate") 
abline(bondsmod)

summary(bondsmod)
# Residuals(ei) = Differnce between observer and predicted/fitted values. 5 number of summary of residuals
# Coefficients.Estimates = Estimates of slope and Intercept Parameter.
# Std. Error = Estimated standard deviation for slope and intercept.
# t value = Ratio of estimates by standard errors , used for criterion for hypothesis testing
# Pr(>|t|) = probabilty of seeing a 't' random variable will be greater than the observed t-statistics
# *** = Significance level above which the null hypothesis(Estimates will be equal to zero) will be rejected.
# F-statisticto check where slope whether slope = 0


