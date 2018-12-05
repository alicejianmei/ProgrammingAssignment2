## Calculate the inverse of a given matrix. "getting cached data" will be shown 
##if it has  been stored.

## set the function.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
get<-function()x
setmatrixinverse<-function(inv) m<<-inv
getmatrixinverse<-function()m
list(set=set,get=get,setmatrixinverse=setmatrixinverse,
     getmatrixinverse=getmatrixinverse)
}


   ## "getting cached data" if the data has already been stored.

cacheSolve <- function(x, ...) {
  m<-x$getmatrixinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
       data<-x$get
       m<-solve(data)
       x$setmatrixinverse(m)
       return(m)
}
