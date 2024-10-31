# Función que da formato a secuencias de proteínas obtenidas de Blast.

# Crear Función
#' Renombrar encabezados de archivo fasta.
#'
#' @description
#' Función para cambiar los encabezados de archvios fasta de tal forma que quede
#' sólo el nombre de los organismos.
#'
#' @param input
#' @import stringr
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
