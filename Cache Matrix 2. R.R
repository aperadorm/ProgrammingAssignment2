## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Function below creates a special "marix" object that can cache its inverse

#the function takes the argument matrix and assuming matrix we upply is invertible
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
# below setting value of the matrix using another function
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
# getting the value of the matrix
    get <- function() {
        x
        } 
#setting the value of the matrix
    setinversa <- function(inverse) {
        m <<- inverse
    }
#getting the value of the inverse
    
    getinversa <- function() {m
    }
#create a list
    list(set = set, get = get,
         setinversa = setinversa,
         getinversa = getinversa)
    }
####Below function computes the inverse of the matrix###

cacheSolve <- function(x, ...) {
#return a matrix that is inverse of x
    m <- x$getinversa()
#check if the inverse has been calculated
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
#calculate inverse of matrix
    m <- solve(data, ...)
#set value of inverse in the cache
    x$setinversa(m)
    m
}