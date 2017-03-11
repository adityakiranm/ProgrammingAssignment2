# For this assignment, assume that the matrix supplied is always invertible, 
# meaning the supplied matrix should a Square matrix (n by n) only

# makeCacheMatrix function will take three inputs: Values of the matrix (Column wise),
# number of Rows, and number of columns and returns a list of the following functions: 
# getMatrix, setInverse and getInverse

makeCacheMatrix <- function(y = numeric(),nR, nC){
  if((nR != nC) || (length(y) != nR*nC)) {
    print("Please recheck and Input proper values for a square matrix only")
  }
  m <- NULL
  getMatrix <- function() {
    x <<-matrix(y,nR,nC)
    x
  }
  setInverse <- function(InvertedMatrix) m <<- InvertedMatrix
  getInverse <- function() m
  list(getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}