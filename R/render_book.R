#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#---------   preview just one chapter   ---------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

file <- "intro.Rmd"
file <- "load_md_aux.Rmd"
file <- "auxiliary_data.Rmd"
file <- "price_framework.Rmd"
file <- "welfare_data.Rmd"
bookdown::render_book(file, "bookdown::gitbook",
                      preview = TRUE)

# bookdown::render_book(file, "bookdown::bs4_book",
#                       preview = TRUE)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#---------   render the whole book   ---------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

debugonce(rmarkdown:::create_output_format)
bookdown::render_book("index.Rmd", "bookdown::gitbook")
browseURL("docs/index.html")
# bookdown::render_book("index.Rmd", "bookdown::bs4_book")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#----- serve book to see modification on the fly   --------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# dir <- getwd()
# bookdown::serve_book(dir = dir, output_dir = "docs",
#                      preview = TRUE)

