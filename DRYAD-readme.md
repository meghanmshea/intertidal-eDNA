# Environmental DNA metabarcoding differentiates between micro-habitats within the rocky intertidal

**Prepared By:** Meghan M. Shea

**Manuscript Authors:** Meghan M. Shea & Alexandria B. Boehm

> **Abstract:** While the utility of environmental DNA (eDNA) metabarcoding surveys for biodiversity monitoring continues to be demonstrated, the spatial and temporal variability of eDNA, and thus the limits of the differentiability of an eDNA signal, remains under-characterized. In this study, we collected eDNA samples from distinct micro-habitats (~40 m apart) in a rocky intertidal ecosystem over their exposure period in a tidal cycle. During this period, the micro-habitats transitioned from being interconnected, to physically isolated, to interconnected again. Using a well-established eukaryotic (cytochrome oxidase subunit I) metabarcoding assay, we detected 415 species across 28 phyla. Across a variety of univariate and multivariate analyses, using exclusively taxonomically-assigned data as well as all detected amplicon sequence variants (ASVs), we identified unique eDNA signals from the different micro-habitats sampled. This differentiability paralleled expected ecological gradients and increased as the sites became more physically disconnected. Our results demonstrate that eDNA biomonitoring can differentiate micro-habitats in the rocky intertidal only 40 m apart, that these differences reflect known ecology in the area, and that physical connectivity informs the degree of differentiation possible. These findings showcase the potential power of eDNA biomonitoring to increase the spatial and temporal resolution of marine biodiversity data, aiding research, conservation, and management efforts.
---

This repository includes the necessary data to process marine eDNA metabarcoding samples collected from Pillar Point, Half Moon Bay, CA, USA on 28 January 2022. 

## Description of Data, Code, & File Structure

### FASTQ_Files.zip

This archive contains compressed FASTQ sequencing files generated from an Illumina MiSeq PE 2x250bp (500 cycles) sequencing run. More details on sequencing methods can be found in the "Methods" section on Dryad and in the manuscript. The zip file also contains FASTA files of the forward and reverse COI primers used. These FASTA and FASTQ files are formatted for use with the modified Anacapa Container described below. 

### Anacapa_Toolkit_Output.zip

This archive contains the unprocessed output from a run of the modified Anacapa Container on 31 January 2023 on the FASTQ files contained in FASTQ_Files.zip.

### Processed_eDNA_Data.zip

This archive contains processed versions of the ASVs, taxonomy assignments, and sample information from the Anacapa Toolkit Output. More details on processing can be found in the "Methods" section on Dryad and in the manuscript, but in short, we used only taxonomic assignments from the Anacapa Toolkit output (above) that had a bootstrap confidence cutoff score of 60 or higher in BLCA. Then, we removed singletons; we removed all ASVs that appeared in any negative field control, negative extraction control, or no-template negative PCR control; and we rarefied to the minimum number of reads of any sample. These processing steps can also all be found and reproduced in PillarPoint.Rmd in the Intertidal-eDNA GitHub Repo. 

The processed eDNA dataset represents the core dataset analyzed in the manuscript. 


## Related Works: Software & Code

### Anacapa Container (modified)

The modified Anacapa Container, [published to Zenodo](https://doi.org/10.5281/zenodo.8201140) and found in the "Related Works" on Dryad, is the workflow used to process FASTQ_Files.zip. The output from this workflow is Anacapa_Toolkit_Output.zip. More details on the Anacapa Container and how it works can be found on [its Zenodo page](https://doi.org/10.5281/zenodo.8201140). 

### Intertidal-eDNA GitHub Repository

The Intertidal-eDNA GitHub repository, [published to Zenodo](https://doi.org/10.5281/zenodo.8213050) and found in the "Related Works" on Dryad, contains all of the data and code needed to reproduce the analyses in the manuscript, starting from Anacapa_Toolkit_Output.zip (which is already included in the repo). Using PillarPoint.Rmd, you can generate the processed eDNA dataset saved here as Processed_eDNA_Data.zip and use that dataset to reproduce all of the analyses, as well as most of the figures, in the manuscript. More details on the Intertidal-eDNA GitHub repository can be found on [its Zenodo page](https://doi.org/10.5281/zenodo.8213050). 


## Sharing/Access information

This is a section for linking to other ways to access the data, and for linking to sources the data is derived from, if any. *MORE INFORMATION COMING SOON*

