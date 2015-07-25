## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# function for caching invertion
makeCacheMatrix <- function(x=matrix()) {
    matrix <- NULL
    set <- function(y) {
        x <<- y
        matrix <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) matrix <<-inverse
    getInverse <- function() matrix
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
 
}

# if already inverted take this from cache
cacheSolve <- function(x, ...) {
    matrix <- x$getInverse()
    if (!is.null(matrix)) {
        return(matrix)
    }
    matrix <- solve(x$get())
    x$setInverse(matrix)
    matrix
}
