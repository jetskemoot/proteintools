
<!-- README.md is generated from README.Rmd. Please edit that file -->

# proteintools

<!-- badges: start -->

<!-- badges: end -->

The goal of proteintools is to provide convenient functions for basic
protein and DNA sequence analysis. This package was developed as part of
a data science for biology 2 portfolio project at Hogeschool Utrecht.

## Installation

You can install the development version of proteintools from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("jetskemoot/proteintools")
```

## Functions

The package currently includes the following functions:

`protein_mass()` – Calculate the molecular mass of a protein sequence.
`is_valid_protein()` – Check if a sequence contains only valid amino
acids. `analyze_amino_acid()` – Analyze amino acid in protein sequence.
`translate_dna()` – Translate a DNA sequence to a protein.
