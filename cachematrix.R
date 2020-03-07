## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	ver <- NULL
	set <- function(y) {
			x <<- y
			ver <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) ver <<- inverse
	getinverse <- function() ver
	list(set = set, get = get,
		 setinverse = setinverse,
		 getinverse = getinverse)

}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	ver <- x$getinverse()
	if(!is.null(ver)) {
			message("getting cached data")
			return(ver)
	}
	matrix <- x$get()
	ver <- solve(matrix, ...)
	x$setinverse(ver)
	ver
		## Return a matrix that is the inverse of 'x'
}
