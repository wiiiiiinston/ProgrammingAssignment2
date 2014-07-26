## cached matrix inverse

##define function
makeCacheMatrix <- function(x = matrix()) {
    matrix <- x
    invcache <- NULL
    getmatrix <- function() matrix
    getinv <- function() invcache
    setinv <- function(inv) invcache <<- inv
    ##listing function steps for inverse calculation
    list(getmatrix = getmatrix, getinv = getinv, setinv = setinv)
}


## solves inverse of matrix and caches

cacheSolve <- function(x, ...) {
    	inv <- x$getinv()
    	if(!is.null(inv)){
   		 ##reutrns inv of cache
   		 return(inv)
    	}
    	matrix <- x$getmatrix()
    	answer <- solve(matrix)
    	x$setinv(answer)
    	answer
}