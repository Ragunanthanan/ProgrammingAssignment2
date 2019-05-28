## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<- function(matrix){
  inverse.matrix<- NULL
  get<- function() matrix
  getinversematrix<- function() inverse.matrix
  setinversematrix<- function(solve) inverse.matrix<<- solve
  list(get=get, getinversematrix= getinversematrix, setinversematrix= setinversematrix)
}


## Write a short comment describing this function

cacheSolve<- function(matrix){
  d<- matrix$getinversematrix()
  if (!is.null(d)){
    print('cache matrix is here')
    return(d)
  }
  data<- matrix$get()
  d<- solve(data)
  matrix$setinversematrix(d)
  d
  print(d)
}
