## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  echo = TRUE,
  collapse = TRUE,
  comment = "#>",
  dpi = 300,
  fig.align = "center")

## ----eval = FALSE-------------------------------------------------------------
#  install.packages("pedsuite")

## ----eval = FALSE-------------------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("magnusdv/pedsuite")

## -----------------------------------------------------------------------------
library(pedsuite)

## ----fc-ped1, fig.height = 3.5, fig.width = 3.5, out.width = "40%"------------
x = cousinPed(1, child = TRUE)
plot(x)

## ----fc-ped2, fig.height = 3.5, fig.width = 3.5, out.width = "40%"------------
x = swapSex(x, ids = 3)

plot(x, 
     hatched = 9, 
     carrier = 7:8,
     fill = list(pink = 1), 
     textAnnot = list(inside = c("1" = "?")))

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

## ----echo = F-----------------------------------------------------------------
# Just for CRAN
par(op)

## -----------------------------------------------------------------------------
y = markerSim(x, N = 500, alleles = c("A", "B"))

## -----------------------------------------------------------------------------
y

## ----check-pairwise, results="hide", fig.height = 5, fig.width = 5, out.width = "60%"----
checkPairwise(y)

