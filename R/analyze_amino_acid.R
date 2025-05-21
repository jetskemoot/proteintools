#' Title Analyze amino acid in protein sequence
#'
#' @param sequence A character string with the protein sequence
#' @param amino_acid A single letter amino acid
#'
#' @returns A list with count and positions of the provided amino acid
#' @export
#'
#' @examples
#' analyze_amino_acid("MKTWLTKK", "K")
#'
analyze_amino_acid <- function(sequence, amino_acid) {
  seq_vec <- strsplit(sequence, "")[[1]]
  positions <- which(seq_vec == amino_acid)
  count <- length(positions)

  return(list(count = count, positions = positions))
  }
