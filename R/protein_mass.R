#' Calculate mass of a protein
#'
#' @param sequence A character string representing a protein sequence, using
#' one letter amino acids.
#'
#' @returns A numeric value, the total molecular mass of the protein sequence
#' in Dalton (Da).
#' @export
#'
#' @examples
#' protein_mass("ACDE")
#' protein_mass("MALWMRLLPLLALLALWGPDPAAA")
protein_mass <- function(sequence) {
    amino_acid_mass <- c(
            A = 71.04, R = 156.10, N = 114.04, D = 115.03, C = 103.01,
            E = 129.04, Q = 128.06, G = 57.02, H = 137.06, I = 113.08,
            L = 113.08, K = 128.09, M = 131.04, F = 147.07, P = 97.05,
            S = 87.03, T = 101.05, W = 186.08, Y = 163.06, V = 99.07)
    mass <- sum(amino_acid_mass[strsplit(sequence, "")[[1]]], na.rm = TRUE)
    return(mass)
    }
