## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinversa <- function(solve) m <<- solve
    getinversa <- function() m
    list(set = set, get = get,
         setinversa = setinversa,
         getinversa = getinversa)
}
cacheSolve <- function(x, ...) {
    m <- x$getinversa()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinversa(m)
    m
    
}
