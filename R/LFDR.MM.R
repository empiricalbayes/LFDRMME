#utils::globalVariables("dchisq")


LFDR.MM<- function (x) {
    # x is the vector of chi-square test statistics
    ValNeg <- (x < 0)
    ValZero <- (x == 0)


    if(sum(ValNeg>0)){
      stop("test statistics cannot be negative")
    }

    if(sum(ValZero>0)){
      stop("test statistics cannot be zero")
    }

   m1=mean(x)
   m2=mean(x^2)
   lambda=(m2-3)/(m1-1)-6
   p0=1-((m1-1)/lambda)
   lfdrs=p0*dchisq(x,df=1,ncp=0)/(p0*dchisq(x,df=1,ncp=0)+(1-p0)*dchisq(x,df=1,ncp=lambda))
   return(list(p0.hat=p0,ncp.hat=lambda,lfdr.hat=lfdrs))
    #cat("\nGiven a threshold of: ", threshold, "\n\n")
}
