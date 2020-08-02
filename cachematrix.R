## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function( y ) {
    x <<- y
    m <<- NULL
  }

  get <- function() {
    x
  }
  
  setInverse <- function(inverse) {
    m <<- inverse
  }
  
  getInverse <- function() {
    m
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(z, ...) {
        ## Return a matrix that is the inverse of 'z'
  
  x <- z$getInverse()
  
  if( !is.null(x) ) {
    message("getting cached data")
    return(x)
  }
  
  data <- z$get()
  x <- solve(data) %*% data
  z$setInverse(x)
  
  x
  
}
