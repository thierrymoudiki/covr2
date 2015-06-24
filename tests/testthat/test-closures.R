fun <- function() {

  function(x) {
    if (FALSE) {
      x + 1
    } else {
      x
    }
  }
}

fun2 <- function() {

  function(x) {
    if (FALSE)
      x + 1
    else
      x
  }
}
