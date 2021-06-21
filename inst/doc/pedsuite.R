## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  echo = TRUE,
  collapse = TRUE,
  comment = "#>",
  fig.align = "center")

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("pedsuite")

## ---- eval = FALSE------------------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("magnusdv/pedsuite")

## -----------------------------------------------------------------------------
library(pedsuite)

## ---- fig.keep  ="none"-------------------------------------------------------
x = cousinPed(1, child = TRUE)
plot(x)

## ----fc-ped1, echo = F, fig.height = 3.5, fig.width = 3.5, out.width = "40%"----
plot(x, margin = rep(.8,4))

## ---- fig.keep  ="none"-------------------------------------------------------
x = swapSex(x, ids = 3)

plot(x, labs = 9, hatched = 9)

## ----fc-ped2, echo = F, fig.height = 3.5, fig.width = 3.5, out.width = "40%"----
plot(x, labs = 9, hatched = 9, margin = rep(.8,4))

## -----------------------------------------------------------------------------
inbreeding(x, ids = 9)

## -----------------------------------------------------------------------------
library(ibdsim2)

## -----------------------------------------------------------------------------
sims = ibdsim(x, N = 200, seed = 123)

## -----------------------------------------------------------------------------
fr = realisedInbreeding(sims, id = 9)

## -----------------------------------------------------------------------------
head(fr$perSimulation)

## ----fr-hist, echo = -1, out.width = "80%", fig.height = 3, fig.width = 7-----
op <- par(mar = c(4.1, 4.1, 1, 1))
hist(fr$perSimulation$fReal, xlim = c(0, 0.15), breaks = 16, xlab = "f_R", main = NULL)

# Expected value
abline(v = 1/16, col = 2)

## ---- echo = F----------------------------------------------------------------
# Just for CRAN
par(op)

## -----------------------------------------------------------------------------
y = markerSim(x, N = 500, alleles = c("A", "B"))

## -----------------------------------------------------------------------------
y

## ----check-pairwise, results="hide", fig.height = 5, fig.width = 5, out.width = "60%"----
checkPairwise(y, plot = TRUE)

