## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
 #The function above is supposed to set and get the values of both the matrix and the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

##Please include your own comment to explain your code (Required in Rubric)
#Function 2;cacheSolve is supposed to calculate the inverse of the matrix created using the first function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
cacheMatrix <- makeCacheMatrix(matrix(1:4, ncol = 2))
cacheSolve(cacheMatrix)
#The code above will calculate the inverse of the matrix incase none is present within the cache
