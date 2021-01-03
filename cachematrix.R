## This program an invert a square matrix, if its
## already calculate and storage its take de value
## from the storage whitout new calculate

## This generate the invert of a matrix, with
## several functions over it

makeCacheMatrix <- function( i = matrix()){
  invertida <- NULL
  set <- function(j){
    i <<- j
    invertida <<- NULL
  }
  get <- function() {i}
  invertir <- function(inverse) {invertida <<- inverse}
  getInvertida <- function() {invertida}
  list(set = set, get = get, invertir = invertir, getInvertida = getInvertida)
}


## This function select if a matrix
## was inverted alreay or not

cacheSolve <- function(i, ...){
  invertida <- i$getInvertida()
  if(!is.null(invertida)){
    message("Tomando datos de cache!")
    return(invertida)
  }
  mat <- i$get()
  invertida <- solve(mat, ...)
  i$invertir(invertida)
  invertida
}
