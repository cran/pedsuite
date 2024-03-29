
<!-- README.md is generated from README.Rmd. Please edit that file -->

# The **ped suite**: R packages for pedigree analysis

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/pedsuite)](https://CRAN.R-project.org/package=pedsuite)
[![](https://cranlogs.r-pkg.org/badges/grand-total/pedsuite?color=yellow)](https://cran.r-project.org/package=pedsuite)
[![](https://cranlogs.r-pkg.org/badges/last-month/pedsuite?color=yellow)](https://cran.r-project.org/package=pedsuite)
<!-- badges: end -->

The **ped suite** is a collection of R packages for pedigree analysis,
covering a variety of applications across several fields. The packages
are designed to work harmoniously together, often allowing complex tasks
to be solved in a few lines of code.

<img src="man/figures/logos-pedsuite-wheel_1.png" width="100%" style="display: block; margin: auto;" />

### Core packages

At the centre of the **ped suite** we find the package **pedtools**, on
which all the others depend. In addition, several packages contain basic
features often needed in many types of analysis. These are the *core*
packages:

-   [pedtools](https://github.com/magnusdv/pedtools): Creating and
    working with pedigrees and marker data
-   [forrel](https://github.com/magnusdv/forrel): Forensic pedigree
    analysis and relatedness analysis
-   [pedprobr](https://github.com/magnusdv/pedprobr): Marker
    probabilities and pedigree likelihoods
-   [ribd](https://github.com/magnusdv/ribd): Computation of
    pedigree-based relatedness coefficients
-   [verbalisr](https://github.com/magnusdv/verbalisr): Textual
    descriptions of pedigree relationships

### Specialised packages

The following packages are devoted to special applications:

-   [ibdsim2](https://github.com/magnusdv/ibdsim2): Simulation of
    identity-by-descent sharing by family members
-   [dvir](https://github.com/thoree/dvir): Disaster victim
    identification
-   [pedbuildr](https://github.com/magnusdv/pedbuildr): Pedigree
    reconstruction
-   [paramlink2](https://github.com/magnusdv/paramlink2): Parametric
    linkage analysis
-   [pedmut](https://github.com/magnusdv/pedmut): Mutation models for
    pedigree likelihood computations
-   [segregatr](https://github.com/magnusdv/segregatr): Segregation
    analysis for clinical variant interpretation

### Retired packages

These packages have been superseded by other packages and are no longer
compatible with the rest of the **ped suite**. They are maintained only
for legacy purposes and should not be used in new projects.

-   [paramlink](https://CRAN.R-project.org/package=paramlink): This
    package marked the birth of the **ped suite**. Originally intended
    for parametric linkage analysis, it also contained the seeds of the
    current packages **pedtools**, **pedprobr**, **ribd** and
    **forrel**.
-   [IBDsim](https://CRAN.R-project.org/package=IBDsim): This is
    replaced by **ibdsim2**. (Regrettably, the name ‘IBDsim’ is very
    similar to that of the unrelated (non-R) software ‘IBDSim’
    ([Leblois, Estoup &
    Rousset](http://www1.montpellier.inra.fr/CBGP/software/ibdsim/index.html)).)

### Imported packages

-   [kinship2](https://CRAN.R-project.org/package=kinship2): All
    pedigree plots in the **ped suite** are internally made by importing
    the plotting feature of **kinship2** ([Sinnwell, Therneau &
    Schaid](https://doi.org/10.1159/000363105)). Creating nice pedigree
    plots is a highly non-trivial matter, so if you use the **ped
    suite** to make pedigree plots for publications, please also credit
    **kinship2**.

## QuickPed - an online pedigree creator

In addition to the R packages, the **ped suite** also includes QuickPed,
a free interactive program for creating and exploring pedigrees. Read
more about it
[here](https://magnusdv.github.io/pedsuite/articles/web_only/quickped.html),
or simply try it out: <https://magnusdv.shinyapps.io/quickped>.
