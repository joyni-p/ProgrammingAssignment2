## Put comments here that give an overall description of what your
## functions do
## The following  function will help us crete and cache the inverse of a matrix.

## Write a short comment describing this function
##this fun tion will be able to store values, cache and recalll the matrix.
##I'm going to be honest, I wasn't creatful at all. I literally took the example above the instructions and reworded stuff.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Write a short comment describing this function
## takes matrix and finds the inverse, but first wants to check if the work was done 
## before hand.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)

}
