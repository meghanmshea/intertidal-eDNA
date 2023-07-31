# Environmental DNA (eDNA) metabarcoding differentiates between micro-habitats within the rocky intertidal

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1188538.svg)](https://doi.org/10.5281/zenodo.1188538) NEED TO UPDATE

*Meghan M. Shea & Alexandria B. Boehm*

This repo contains data and *R* code for reproducing Shea & Boehm (TBD), "[Environmental DNA (eDNA) metabarcoding differentiates between micro-habitats within the rocky intertidal](ADD LINK)". If you reference this project or any results, please cite the manuscript (currently available as a pre-print above). If you reuse data or code from this repo, please additionally cite our Dryad data repository (link forthcoming).

> **Abstract:** While the utility of environmental DNA (eDNA) metabarcoding surveys for biodiversity monitoring continues to be demonstrated, the spatial and temporal variability of eDNA, and thus the limits of the differentiability of an eDNA signal, remains under-characterized. In this study, we collected eDNA samples from distinct micro-habitats (~40 m apart) in a rocky intertidal ecosystem over their exposure period in a tidal cycle. During this period, the micro-habitats transitioned from being interconnected, to physically isolated, to interconnected again. Using a well-established eukaryotic (cytochrome oxidase subunit I) metabarcoding assay, we detected 415 species across 28 phyla. Across a variety of univariate and multivariate analyses, using just taxonomically-assigned data as well as all detected amplicon sequence variants (ASVs), we identified unique eDNA signals from the different micro-habitats sampled. This differentiability paralleled ecological expectations and increased as the sites became more physically disconnected. Our results demonstrate that eDNA biomonitoring can differentiate micro-habitats in the rocky intertidal only 40 m apart, that these differences are ecologically meaningful, and that physical connectivity informs the degree of differentiation possible. These findings showcase the potential power of eDNA biomonitoring to increase the spatial and temporal resolution of marine biodiversity data, aiding research, conservation, and management efforts.

## What's in this repository?


## Reproducibility

The entire analysis can executed by running the **`PillarPoint.Rmd`** RMarkdown file, which reproduces the full text of the Methods & Results sections of "[Environmental DNA (eDNA) metabarcoding differentiates between micro-habitats within the rocky intertidal](ADD LINK)".  

#### Step 1: Install R and R libaries

**Note:** The code was most recently tested and updated against *R* 4.3.1. *R* is free, open-source and available for download [here](https://www.r-project.org/).

We use [**renv**](https://rstudio.github.io/renv/) to snapshot the project environment. Run the following command(s) from your *R* console to pull in all of the necessary libraries.

```r
# renv::init()   ## Only necessary if you didn't clone/open the repo as an RStudio project
renv::restore()  ## Enter "y" when prompted
```

#### Step 2: 

ADD TEXT FOR HOW TO LOAD GITHUB

For example:

```
## Run these commands in the shell
git clone git@github.com:grantmcdermott/bycatch.git
cd bycatch
Rscript R/bycatch.R
```

Of course, you may run the analysis interactively in your R console too. The `R/bycatch.R` file contains self-explanatory code for easily reproducing the results from the ten different model runs described in the paper, as well as all of the figures.

**Note:** All of these analyses were run on a personal computer, and should be easy to reproduce. Analyses that require repeated access to an API (e.g. the GBIF range analysis) may take a long time to run. When running R code chunks, we recommend running these analyses as RStudio jobs using `job::job()` from the `job` package [more here](https://lindeloev.github.io/job/). 

## Requirements



## Problems

If you have any trouble running the code, or find any errors, please file an issue on this repo and we'll look into it.

## License

The software code contained within this repository is made available under the [MIT license](http://opensource.org/licenses/mit-license.php). The data and figures are made available under the [Creative Commons Attribution 4.0](https://creativecommons.org/licenses/by/4.0/) license.

## Acknowledgements

We are grateful to many researchers who have modeled good practices for reproducibility and reporting in their own GitHub repos. Thanks especially to Grant McDermott ([bycatch project](https://github.com/grantmcdermott/bycatch/tree/master)), Alexa Fredston ([marine_heatwaves_trawl project](https://github.com/afredston/marine_heatwaves_trawl)),and Ramon Gallego ([eDNA.and.Ocean.Acidification.Gallego.et.al.2020 project](https://github.com/ramongallego/eDNA.and.Ocean.Acidification.Gallego.et.al.2020))