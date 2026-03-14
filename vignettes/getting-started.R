## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(regexpert)
library(magrittr)


## ----eval = FALSE-------------------------------------------------------------
# stringr::str_extract_all("Call us at 800-555-1234", "\\d+")


## ----eval = FALSE-------------------------------------------------------------
# "Call us at 800-555-1234" %>%
#   xp_build_digits() %>%
#   xp_find()
# #> [1] "800" "555" "1234"


## ----eval = FALSE-------------------------------------------------------------
# "Order #88412 placed on 2024-01-15" %>%
#   xp_build_digits() %>%
#   xp_find()
# #> [1] "88412" "2024" "01" "15"


## ----eval = FALSE-------------------------------------------------------------
# "Price: $100!" %>%
#   xp_build_digits(negate = TRUE) %>%
#   xp_find()
# #> [1] "Price: $" "!"


## ----eval = FALSE-------------------------------------------------------------
# "Order #88412 placed" %>%
#   xp_build_letters() %>%
#   xp_find()
# #> [1] "Order" "placed"


## ----eval = FALSE-------------------------------------------------------------
# "abc123" %>%
#   xp_build_letters(negate = TRUE) %>%
#   xp_find()
# #> [1] "123"


## ----eval = FALSE-------------------------------------------------------------
# "hello   world" %>%
#   xp_build_whitespace() %>%
#   xp_find()
# #> [1] " " " " " "


## ----eval = FALSE-------------------------------------------------------------
# "hello   world" %>%
#   xp_build_whitespace(negate = TRUE) %>%
#   xp_find()
# #> [1] "hello" "world"

