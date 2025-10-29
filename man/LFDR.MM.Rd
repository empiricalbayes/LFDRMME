\name{LFDR.MM}
\alias{LFDR.MM}

\docType{package}
\title{Performs a Multiple Hypothesis Testing Using the Method of Moments}

\description{Based on a given vector of chi-square test statistics, provides estimates of local false discoveries.
}

\usage{
LFDR.MM(x)
}

\arguments{
  \item{x}{A vector of chi-square test statistics with one degree of freedom.}
}

\details{
For \eqn{N} given features (genes, proteins, SNPs, etc.), the function tests the null hypothesis \eqn{H_{0i}}, \eqn{i=1,\ldots,N}, indicating that there is no association between feature \eqn{i} and a specific disease, versus its alternative hypothesis \eqn{H_{1i}}. For each unassociated feature \eqn{i}, it is suppoed that the corresponding test stiatistic \eqn{x_i} follows a central chi-square distribution with one degree of freedom.  For each associated feature \eqn{i}, it is assumed that the corresponding test stiatistic \eqn{x_i} follows a non-central chi-square distribution with one degree of freedom and non-centrality parameter \eqn{\lambda}. In this packag, association is measured by estimating the local false discovery rate (LFDR), the posterior probability that the null hypothesis \eqn{H_{0i}} given the test statistic \eqn{x_i} is true.
This package returns three components as mentioned in the \bold{Value} section.}

\value{

Outputs three elements as seen below:
 \item{pi0.hat}{estimate of proportion of unassocaited features \eqn{\pi_0}.}
 \item{ncp.hat}{estimate of the non-centrality parameter \eqn{\lambda} of the chi-square model for associated features.}
 \item{lfdr.hat}{estimates of local false discovery rates.}
}


\references{
Karimnezhad, A. (2020). A Simple Yet Efficient Parametric Method of Local False Discovery Rate Estimation Designed for Genome-Wide Association Data Analysis. Retrieved from
\url{https://arxiv.org/abs/1909.13307}
}

\author{
  Code: Ali Karimnezhad. \cr
  Documentation: Ali Karimnezhad. \cr
}

\examples{
# vector of test statistics for assocaited features
stat.assoc<- rchisq(n=1000,df=1, ncp = 3)

# vector of test statistics for unassocaited features
stat.unassoc<- rchisq(n=9000,df=1, ncp = 0)

# vector of test statistics
stat<- c(stat.assoc,stat.unassoc)

output <- LFDR.MM(x=stat)

# Estimated pi0
output$p0.hat

# Estimated non-centrality parameter
output$ncp.hat

# Estimated LFDRs
output$lfdr.hat
}

\keyword{Chi-Square Distribution}
\keyword{Empirical Bayes}
\keyword{Local False Discovery Rate }
\keyword{Multiple Hypothesis Testing}
\keyword{Null Hypothesis}
