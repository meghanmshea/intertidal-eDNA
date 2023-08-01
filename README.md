# Environmental DNA (eDNA) metabarcoding differentiates between micro-habitats within the rocky intertidal

*Meghan M. Shea & Alexandria B. Boehm*

This repo contains data and R code for reproducing Shea & Boehm (TBD), "Environmental DNA (eDNA) metabarcoding differentiates between micro-habitats within the rocky intertidal". If you reference this project or any results, please cite the pre-print or manuscript (currently available as a pre-print above). If you reuse data or code from this repo, please additionally cite our Dryad data repository (link forthcoming).

> **Abstract:** While the utility of environmental DNA (eDNA) metabarcoding surveys for biodiversity monitoring continues to be demonstrated, the spatial and temporal variability of eDNA, and thus the limits of the differentiability of an eDNA signal, remains under-characterized. In this study, we collected eDNA samples from distinct micro-habitats (\~40 m apart) in a rocky intertidal ecosystem over their exposure period in a tidal cycle. During this period, the micro-habitats transitioned from being interconnected, to physically isolated, to interconnected again. Using a well-established eukaryotic (cytochrome oxidase subunit I) metabarcoding assay, we detected 415 species across 28 phyla. Across a variety of univariate and multivariate analyses, using just taxonomically-assigned data as well as all detected amplicon sequence variants (ASVs), we identified unique eDNA signals from the different micro-habitats sampled. This differentiability paralleled ecological expectations and increased as the sites became more physically disconnected. Our results demonstrate that eDNA biomonitoring can differentiate micro-habitats in the rocky intertidal only 40 m apart, that these differences are ecologically meaningful, and that physical connectivity informs the degree of differentiation possible. These findings showcase the potential power of eDNA biomonitoring to increase the spatial and temporal resolution of marine biodiversity data, aiding research, conservation, and management efforts.

## Where did the data used here come from?

This analysis primarily relies on the output of the [Anacapa Toolkit](https://github.com/limey-bean/Anacapa), a pipeline for processing eDNA metabarcoding sequence data developed by Curd et al. You can read more about the Anacapa Toolkit [here](https://besjournals-onlinelibrary-wiley-com.stanford.idm.oclc.org/doi/10.1111/2041-210X.13214). We modified a [containerized (Singularity) version of the Anacapa Toolkit](https://github.com/dat-ecosystem-archive/anacapa-container) to run on the Stanford Sherlock computing cluster. The raw data (FASTQ sequencing files), modified container, and scripts needed to reproduce the output analyzed here can be found in our Dryad data repository (link forthcoming).

This analysis also requires NOAA/NOS/CO-OPS daily tide predictions from Pillar Point Harbor on 28 January 2022, downloaded as a .txt [here](https://tidesandcurrents.noaa.gov/noaatidepredictions.html?id=9414131&units=metric&bdate=20220128&edate=20220128&timezone=LST/LDT&clock=24hour&datum=MLLW&interval=15&action=dailychart).

## What's in this repository?

The repository contains:

-   `Data`: the Anacapa Output and tide data described above
-   `PillarPoint.Rmd`: an RMarkdown file, which reproduces the full text of the Methods & Results sections of "[Environmental DNA (eDNA) metabarcoding differentiates between micro-habitats within the rocky intertidal](ADD%20LINK)".
-   `Analysis Products`: the various tables and supplemental information outputs from `PillarPoint.Rmd` as well as the processed eDNA datasets used in the manuscript analysis, and prepared for submission to GBIF (link forthcoming)
-   `Figures`: the image files generated by `PillarPoint.Rmd` for main text and supplemental figures

## How should I use this repository?

The entire analysis can executed by running the **`PillarPoint.Rmd`** RMarkdown file, which reproduces the full text of the Methods & Results sections of "[Environmental DNA (eDNA) metabarcoding differentiates between micro-habitats within the rocky intertidal](ADD%20LINK)".

[UNDER CONSTRUCTION] 

#### Step 1: Install R and R libaries

**Note:** The code was most recently tested and updated against *R* 4.3.1. *R* is free, open-source and available for download [here](https://www.r-project.org/).

We use [**renv**](https://rstudio.github.io/renv/) to snapshot the project environment. Run the following command(s) from your *R* console to pull in all of the necessary libraries.

``` r
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

**Note:** All of these analyses were run on a personal computer, and should be easy to reproduce. Analyses that require repeated access to an API (e.g. the GBIF range analysis) may take a long time to run. When running R code chunks, we recommend running these analyses as RStudio jobs using `job::job()` from the `job` package ([more here](https://lindeloev.github.io/job/)).

## Problems

If you have any trouble running the code, or find any errors, please file an issue on this repo and we'll look into it. You can also email [Meghan Shea](mailto:%20mshea@stanford.edu).

## License

The software code contained within this repository is made available under the [MIT license](http://opensource.org/licenses/mit-license.php). The data and figures are made available under the [Creative Commons Attribution 4.0](https://creativecommons.org/licenses/by/4.0/) license.

## Acknowledgements

We are grateful to many researchers who have modeled good practices for reproducibility and reporting in their own GitHub repos. Thanks especially to Grant McDermott ([bycatch project](https://github.com/grantmcdermott/bycatch/tree/master)), Alexa Fredston ([marine_heatwaves_trawl project](https://github.com/afredston/marine_heatwaves_trawl)),and Ramon Gallego ([eDNA.and.Ocean.Acidification.Gallego.et.al.2020 project](https://github.com/ramongallego/eDNA.and.Ocean.Acidification.Gallego.et.al.2020)).
