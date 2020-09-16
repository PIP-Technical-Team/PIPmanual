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
4. Add the name of your file to the `rmd_files:` section of the `_bookdown.yml` file, which is located in the root of the project. The position of the name of your file in this section determines the order in which your file will be rendered and, subsequently, the number of the chapter. Make sure to add a comma "," after the name. It looks something like this, 
``` yml
rmd_files: [
  "index.Rmd",
  "intro.Rmd",

  "references.Rmd",
]

```
