

if (interactive()) {

  if (requireNamespace("gert", quietly = TRUE)) {
    library(gert)

    gca <- function(x, ...) {
      gert::git_commit_all(x, ...)
    }

    gp <- function(x = NULL, ...) {
      gert::git_push(x, ...)
    }

    ga <- function(...) {
      gert::git_add(gert::git_status(...)$file)
    }

    gi <- function() {
      gert::git_info()$upstream
    }
    gs <- function() {
      gert::git_status()
    }
  }

}


if (requireNamespace("pushoverr", quietly = TRUE)) {



  render_book <- function(rmd = "index") {

    # debugonce(rmarkdown:::create_output_format)

    file <- fs::path(rmd, ext = "Rmd")
    s     <- Sys.time()
    start <-  format(s, "%H:%M")


    rs <- try({
      bookdown::render_book(file, "bookdown::gitbook")
    })

    f      <- Sys.time()
    finish <- format(f, "%H:%M")

    d <- f - s


    msg <- paste0("Finished rendering \nStarted at ", start,
                  "\nFinished at ", finish,
                  "\nDifference ", d)
    pushoverr::pushover(msg)

    msg <- paste0("Finished rendering {.file {file}} \nStarted at ", start,
                  "\nFinished at ", finish,
                  "\nDifference ", d)
    cli::cli_alert(msg)

    if (isFALSE(inherits(rs, "try-error"))) {
      browseURL("docs/index.html")
    }
    return(invisible(TRUE))
  }

}


