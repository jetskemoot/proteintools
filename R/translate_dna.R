#' Title Translate DNA sequence into protein sequence
#'
#' @param dna_sequence A character string representing a DNA sequence
#'
#' @returns A character string representing the translated protein sequence
#' @export
#'
#' @examples
#' translate_dna("ATGGCCATTGTAATGGGCCGCTGAAAGGGTGCCCGATAG")
#'
translate_dna <- function(dna_sequence) {
  codon_table <- c(
    AUA = "I", AUC = "I", AUU = "I", AUG = "M",
    ACA = "T", ACC = "T", ACG = "T", ACU = "T",
    AAC = "N", AAU = "N", AAA = "K", AAG = "K",
    AGC = "S", AGU = "S", AGA = "R", AGG = "R",
    CUA = "L", CUC = "L", CUG = "L", CUU = "L",
    CCA = "P", CCC = "P", CCG = "P", CCU = "P",
    CAC = "H", CAU = "H", CAA = "Q", CAG = "Q",
    CGA = "R", CGC = "R", CGG = "R", CGU = "R",
    GUA = "V", GUC = "V", GUG = "V", GUU = "V",
    GCA = "A", GCC = "A", GCG = "A", GCU = "A",
    GAC = "D", GAU = "D", GAA = "E", GAG = "E",
    GGA = "G", GGC = "G", GGG = "G", GGU = "G",
    UCA = "S", UCC = "S", UCG = "S", UCU = "S",
    UUC = "F", UUU = "F", UUA = "L", UUG = "L",
    UAC = "Y", UAU = "Y", UAA = "*", UAG = "*",
    UGC = "C", UGU = "C", UGG = "W", UGA = "*")

  rna <- stringr::str_replace_all(dna_sequence, "T", "U")
  codon_start <- seq(1, stringr::str_length(rna) - 2, by = 3)
  codons <- stringr::str_sub(rna, codon_start, codon_start + 2)
  protein <- codon_table[codons]
  stringr::str_c(protein, collapse = "")
}
