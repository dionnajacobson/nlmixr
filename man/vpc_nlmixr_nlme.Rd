% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vpc.R
\name{vpc_nlmixr_nlme}
\alias{vpc_nlmixr_nlme}
\alias{vpcNlmixrNlme}
\alias{vpc.nlmixrNlme}
\title{Visual predictive check (VPC) for nlmixr nlme objects}
\usage{
vpc_nlmixr_nlme(fit, nsim = 100, condition = NULL, ...)

vpcNlmixrNlme(fit, nsim = 100, condition = NULL, ...)

\method{vpc}{nlmixrNlme}(sim, ...)
}
\arguments{
\item{fit}{nlme fit object}

\item{nsim}{number of simulations}

\item{condition}{conditional variable}

\item{...}{Additional arguments}

\item{sim}{this is usually a data.frame with observed data, containing the independent and dependent variable, a column indicating the individual, and possibly covariates. E.g. load in from NONMEM using \link{read_table_nm}.  However it can also be an object like a nlmixr or xpose object}
}
\description{
Do visual predictive check (VPC) plots for nlme-based non-linear mixed effect models
}
\examples{
specs <- list(fixed=lKA+lCL+lV~1, random = pdDiag(lKA+lCL~1), start=c(lKA=0.5, lCL=-3.2, lV=-1))
fit <- nlme_lin_cmpt(theo_md, par_model=specs, ncmt=1, verbose=TRUE)
vpc(fit, nsim = 100, condition = NULL)
}
