## Put comments here that give an overall description of what your
## functions do

## Create matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x<<-y
        m<<-NULL
    }
    get <- function() x
    setinverse <- function(inverseM) m<<-inverseM
    getinverse <- function() m
    list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
    
}


## Create inverse matrix from above function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)){
        message('Getting cache data')
        return(m)
    }
    data <- x$get()
    m <- solve(data,...)
    x$setinverse(m)
    m
}
