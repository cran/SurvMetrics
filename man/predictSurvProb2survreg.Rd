% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predictSurvProb2survreg.R
\name{predictSurvProb2survreg}
\alias{predictSurvProb2survreg}
\title{Predicting Survival Probabilities for a 'survreg' Object}
\usage{
predictSurvProb2survreg(object, newdata, time_days)
}
\arguments{
\item{object}{A model fitted by \code{survreg} from which to extract predicted survival probabilities}

\item{newdata}{A data frame containing predictor variable combinations
for which to compute predicted survival probabilities.}

\item{time_days}{A vector of times in the range of the response variable,
We.g. times when the response is a survival object, at which to return the survival probabilities.}
}
\value{
A matrix with as many rows as NROW(newdata) and as many columns as length(time_days).
Each entry should be a probability and in rows the values should be decreasing.
}
\description{
Function to extract survival probability predictions from \code{survreg} modeling approach.
}
\examples{
library(survival)
set.seed(1234)
mydata <- kidney[, -1]
train_index <- sample(1:nrow(mydata), 0.7 * nrow(mydata))
train_data <- mydata[train_index, ]
test_data <- mydata[-train_index, ]
survregfit <- survreg(Surv(time, status) ~ ., dist = 'weibull', data = train_data)
pre_sb <- predictSurvProb2survreg(survregfit, test_data, c(10, 20))

}
\author{
Hanpu Zhou \email{zhouhanpu@csu.edu.cn}
}
