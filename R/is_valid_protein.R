#' Title Is rotein Sequence is valid?
#'
#' @param sequence A character string representing a protein sequence
#'
#' @returns A logical value: `TRUE` if all characters are valid amino acids,
#' `FALSE` otherwise.
#' @export
#'
#' @examples
#' is_valid_protein("ACDEFGHIKLMNPQRSTVWY")  # TRUE
#' is_valid_protein("ACDEX")                 # FALSE
#'
is_valid_protein <- function(sequence) {
  valid_aa <- c("A","R","N","D","C","E","Q",
                "G","H","I","L","K","M","F",
                "P","S","T","W","Y","V")
  seq_aa <- unique(strsplit(sequence, "")[[1]])
  return(all(seq_aa %in% valid_aa))
}
