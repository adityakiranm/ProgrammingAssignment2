# CacheSolve function will return the inverse of a matrix. If the Inverse for the
# matrix is already available in Cache, the function will return the same and NOT
# re-compute the same again

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getMatrix()
  m <- solve(data)
  x$setInverse(m)
  m
}