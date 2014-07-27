## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		inversematrix <- NULL
        set <- function(y) {
                x <<- y
                inversematrix <<- NULL
        }
        get <- function() x
        setInversematrix <- function(solve) inversematrix <<- solve
        getInversematrix <- function() inversematrix
        list(set = set, get = get,
             setInversematrix = setInversematrix,
             getInversematrix = getInversematrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		im <- x$getInversematrix()
        if(!is.null(im)) {
                message("getting cached data")
                return(im)
        }
        data <- x$get()
        im <- solve(data, ...)
        x$setInversematrix(im)
        im
}
