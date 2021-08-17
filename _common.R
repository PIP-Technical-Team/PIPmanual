set.seed(890987)

knitr::opts_chunk$set(
  comment   = "#>",
  collapse  = TRUE,
  cache     = TRUE,
  out.width = "70%",
  fig.align = 'center',
  fig.width = 6,
  fig.asp   = 0.618,  # 1 / phi
  fig.show  = "hold",
  prompt    = FALSE,
  tidy      = FALSE,
  message   = FALSE,
  warning   = FALSE
)

options(dplyr.print_min = 6, dplyr.print_max = 6)

# Activate crayon output
options(
  crayon.enabled = TRUE,
  pillar.bold = TRUE,
  stringr.html = FALSE
)

