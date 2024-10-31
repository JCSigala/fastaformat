# Función que da formato a secuencias de proteínas obtenidas de Blast.

library(stringr)

# Crear Función
#' Renombrar encabezados de archivo fasta.
#'
#' @param input
#'
#' @return Archivo fasta con los encabezados modificados
#' @export
#'
#' @examples
#'
renameFasta <- function(input) {
    # Read the file into a character vector
    text <- readLines("Protseq.txt")

    # Apply the substitution using a regular expression
    text_modified <- str_replace_all(text, ">.*\\[([^]]*)\\].*", ">\\1")

    # Write the modified text to a new file
    writeLines(text_modified, "Protseq_Modif.txt")
}
