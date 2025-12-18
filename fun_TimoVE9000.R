
fun_TimoVE9000 <- function(x) {
	if (!is.numeric(x)) stop("Input must be numeric")
	if (length(x) != 5) stop("Input must be a vector of length 5")
	s <- sum(as.integer(x))
	rep(s, 5)
}

