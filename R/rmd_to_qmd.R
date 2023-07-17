# load packages
pacman::p_load(
  fs,           # data and file manipulation
  stringr,      # work with strings
  here,         # files and paths
  readr         # read and write files
)


# step 1: change '.Rmd' files to '.qmd' ----

rmd_file_names <- dir_ls(       # get all rmd file names in directory
  path = ".",                   # current dir
  glob = "*.Rmd"                # only rmd files
)
qmd_file_names <- str_replace(  # make'.qmd'
  string = rmd_file_names,      # vector to modify
  pattern = "Rmd",              # pattern to change
  replacement = "qmd"           # change to 'qmd'
)
file_move(
  path = rmd_file_names,        # from these file names (.Rmd)
  new_path = qmd_file_names     # to these files names (.qmd)
)
file_move(
  path = "_bookdown.yml",       # change bookdown.yml
  new_path = "_quarto.yml"      # to quarto.yml
)

# step 2: modify contents of the old bookdown.yml ----

quarto_yaml_rmd <- read_lines(
  "_quarto.yml"                 # vector w elements as quarto.yml file
)
quarto_yaml_qmd <- str_replace_all( # change elements in vector with 'Rmd' to 'qmd'
  string = quarto_yaml_rmd,
  pattern = "Rmd",
  replacement = "qmd"
)
write_lines(
  x = quarto_yaml_qmd,
  file = "_quarto.yml" # write the new lines into the yml
)










