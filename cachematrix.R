#
#                                               ::: DESCRIPTION :::
#
# Function cacheSolve() will take a matrix as an input, it will check whether this matrix and its inverse are 
# cached or not. If cached then it would return the cached inverse of the matrix. If not then it will cache 
# the inverse of the matrix. It would also check whether the matrix is same or not to make sure that correct 
# inverse of matrix would be returned:
#
#================================================================================================================

# Function: makeCacheMatrix will take a matrix as input and cache it:
makeCacheMatrix <- function(x){
  cm <<- x
}

# Function: cacheSolve will return the inverse of a matrix:  
cacheSolve <- function(x){
  if (exists("im") && exists("cm")){
    imat <- im
    if (!is.null(imat) && is.matrix(x) && is.matrix(cm) && dim(x) == dim(cm) && all(x == cm)){
      message("getting cached inverse of matrix")
      return(imat)
    } 
  }
  makeCacheMatrix(x)
  im <<- solve(x)
  im
}



