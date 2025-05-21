is_valid_protein <- function(sequence) {
  valid_aa <- c("A","R","N","D","C","E","Q",
                "G","H","I","L","K","M","F",
                "P","S","T","W","Y","V")
  seq_aa <- unique(strsplit(sequence, "")[[1]])
  return(all(seq_aa %in% valid_aa))
}
