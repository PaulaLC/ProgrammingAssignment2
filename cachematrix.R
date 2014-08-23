## This functions will be used to create an special object that stores a matrix and cache's its inverse.

## The bellow function creates a list cointaining another function 
## that set a matrix, get the matrix, set its inverse and get this inverse


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ## function to set de matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  ## function to get the matrix
  get <- function() x
  
  ## function to set the inverse of the matrix
  setsolve <- function(solve) m <<- solve
  
  ## function to get this inverse
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## function to get and return the inverse of the cached matrix
cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
}

