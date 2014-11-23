## Most impoortantly these functions fullfill Programming assignment.
## they also cache the inverse of a matrix {

## Create the makeCacheMatrix
## Start by cleaning

i <- NULL

## 'set' will be the matrix
set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
}

## get r done - get it?
get <- function() {

## results of the matrix
    m
}

## matrix sill be the 'set', I'm getting crafty with the commments
setInverse <- function(inverse) {
    i <<- inverse
}

## YODA the matrix we will
getInverse <- function() {
    
## The inverse of m will be i
    i
}

## list the gets
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}

## This is nice.  A little handling of the answer.
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    
    ## Return inverse of x
    m <- x$getInverse()
    
    ## OK - lets not return the inverse of the inverse shall we.
    if( !is.null(m) ) {
        message("asked and answered")
        return(m)
    }
    
    ## Get the matrix
    data <- x$get()
    
    ## Matrix math:  lets matrix multiply
    m <- solve(data) %*% data
    
    ## we were inverted - Goose
    ## this gets the inverse of the matrix
    x$setInverse(m)
    
    ## here is the matrix
    m
}