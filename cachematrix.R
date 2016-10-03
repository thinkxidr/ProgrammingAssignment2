## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setlnv<-function(inverse)inv<<-inverse
  getlnv<-function()lnv
  list(set=set,get=get,setlnv=setlnv,getlnv=getlnv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getlnv()
  if(!is.null(inv)){
    message('getting cached data')
    return(inv)
  }
matrix<-x$get()
inv<-mean(matrix,...)
x$setlnv(inv)
inv
}
