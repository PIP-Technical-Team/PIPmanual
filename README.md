# PIP manual


## How to contribute

1. Make sure you have installed `bookdown`. This can be done in one of two ways, 
```r
install.packages("bookdown")
# or the development version
devtools::install_github("rstudio/bookdown")
```
2. Create an `.Rmd` file in the root of the project. Make sure to name it using "snake_case" style. 
3. Add the content to your file.
4. Add the name of your file to the `rmd_files:` section of the `_bookdown.yml` file, which is located in the root of the project. The position of the name of your file in this section determines the order in which your file will be rendered and, subsequently, the number of the chapter. Make sure to add a comma "," after the name. Right now, the `rmd_files:` section  of the `_bookdown.yml` file looks like this, 
``` yml
rmd_files: [
  "index.Rmd",
  "intro.Rmd",

  "references.Rmd",
]

```
5. Render your your chapter and/or the whole book. 
```r
#preview just one chapter
file <- "intro.Rmd"  # Chapter to preview
bookdown::render_book(file, "bookdown::gitbook",
                      preview = TRUE)

# render the whole book
bookdown::render_book("index.Rmd", 
                      "bookdown::gitbook")

```
You can also use the helper file `render_book.R` in the root of the project to execute the code above.

