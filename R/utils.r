prop <- function(x) x / sum(x, na.rm = TRUE)

cv <- function(x, na.rm = FALSE) stats::sd(x, na.rm = na.rm) / mean(x, na.rm = na.rm)

uniquecols <- function(df) {
  one_val <- vapply(df, function(x) length(unique(x)) == 1, logical(1))
  unrowname(df[, one_val, drop = FALSE])
}
