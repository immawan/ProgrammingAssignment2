## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      m <- matrix()
      
      set <- function(y) {
            x <<- y
            m <<- matrix()
      }
      
      get <- function() {
            x
      }
      
      setInverse <- function(result) {
            m <<- result
      }
      
      getInverse <- function() {
            m
      }
      
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getInverse()
      if(!is.na(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data)
      x$setInverse(m)
      m
}
