% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate.R
\name{nlmixrSim}
\alias{nlmixrSim}
\alias{rxSolve.nlmixrFitData}
\alias{simulate.nlmixrFitData}
\alias{solve.nlmixrFitData}
\title{Simulate a nlmixr solved system}
\usage{
nlmixrSim(object, ...)

\method{rxSolve}{nlmixrFitData}(object, params = NULL, events = NULL,
  inits = NULL, scale = NULL, covs = NULL, method = c("liblsoda",
  "lsoda", "dop853"), transitAbs = NULL, atol = 1e-06, rtol = 1e-04,
  maxsteps = 5000L, hmin = 0L, hmax = NULL, hini = 0L,
  maxordn = 12L, maxords = 5L, ..., cores,
  covsInterpolation = c("linear", "locf", "nocb", "midpoint"),
  addCov = FALSE, matrix = FALSE, sigma = NULL, sigmaDf = NULL,
  nCoresRV = 1L, sigmaIsChol = FALSE, nDisplayProgress = 10000L,
  amountUnits = NA_character_, timeUnits = "hours", stiff,
  theta = NULL, eta = NULL, addDosing = FALSE,
  updateObject = FALSE, doSolve = TRUE, omega = NULL,
  omegaDf = NULL, omegaIsChol = FALSE, nSub = 1L, thetaMat = NULL,
  thetaDf = NULL, thetaIsChol = FALSE, nStud = 1L, dfSub = 0,
  dfObs = 0, returnType = c("rxSolve", "matrix", "data.frame"),
  seed = NULL, nsim = NULL)

\method{simulate}{nlmixrFitData}(object, nsim = 1, seed = NULL, ...)

\method{solve}{nlmixrFitData}(a, b, ...)
}
\arguments{
\item{object}{nlmixr object}

\item{...}{Other arguments sent to \code{rxSolve}}
}
\description{
This takes the uncertainty in the model parameter estimates and to
simulate a number of "studies".  Each study simulates a
realization of the parameters from the uncertainty in the fixed
parameter estimates.  In addition the omega and sigma matrices are
simulated from the uncertainty in the Omega/Sigma matrices based
on the number of subjects and observations the model was based on.
}
