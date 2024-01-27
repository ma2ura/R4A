knit_print.data.frame = function(x, ...) {
  res = paste(c("", "",
                knitr::kable(x, digits = 2) |>
                  kableExtra::kable_styling()), collapse = "\n")
  knitr::asis_output(res)
}

registerS3method(
  "knit_print", "data.frame", knit_print.data.frame,
  envir = asNamespace("knitr")
)
