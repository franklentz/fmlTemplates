#' Insert course summary
#'
#' Insert the formatted summary of the course
#'
#' This function has been designed to quickly insert a course summary
#' in various places of the template.
#' This function is not supposed to be included in a file that will be distributed.
#'
#' @param title The title of the course.
#' @param topic The main topic corresponding to the current document.
#' @param details The details or the summary of the topic. Default NULL.
#' @param author The author of the course. Default NULL.
#' @param id The course id. Default NULL.
#' @param format Format of the output. Default "inline"
#'
#' @author FML
#'
#' @return A formatted outline of the course
#' @export
#'
#' @examples
#'
#' test : insert_course("Introduction to Statistics", "Descriptive Statistics")

#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# For groups of function documentation read : https://gist.github.com/jefferys/b79fe87314b0dc72fec9
# For course in datacamp : https://campus.datacamp.com/courses/creating-r-packages

insert_course <- function(title,
                          topic,
                          details = NULL,
                          author =  NULL,
                          id = NULL,
                          format = "inline") {

  if(any(length(title)!=1, length(topic)!=1)){
    warning("Parameters should be of length 1.")
  }

  switch (format,
    "inline" = output <- trimws(paste(title, topic, sep = " - ")),
    "h1" = output <- paste0("<h1>",trimws(paste(title, topic, sep = " - ")), "</h1>"),
    output <- trimws(paste(title, topic, sep = " - "))
  )

  print(output)
}

