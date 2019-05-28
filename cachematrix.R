## There are two functions:
### - One function is to create a matrix , findout the inverse of the matrix and store it.
### - Other function is to return the inverse matrix  

## This function creates a "special matrix" that can cache it's inverse 

makeCacheMatrix<- function(matrix){
  inverse.matrix<- NULL
  set<- function(y){
  matrix<<-y
  inverse.matrix<<- NULL}
  get<- function() matrix
  getinversematrix<- function() inverse.matrix
  setinversematrix<- function(solve) inverse.matrix<<- solve
  list(set=set, get=get, getinversematrix= getinversematrix, setinversematrix= setinversematrix)
}


##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache

cacheSolve<- function(matrix,...){
  d<- matrix$getinversematrix()
  if (!is.null(d)){
    print('cache matrix is here')
    return(d)
  }
  data<- matrix$get()
  d<- solve(data)
  matrix$setinversematrix(d)
  d
}
