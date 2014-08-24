## Function to test the cachematrix.R function.
## To use, source the cachematrix.R and the testcachematrix.R files and call 
## the testcachematrix function
##  For example:
##  source('~/ProgrammingAssignment2/cachematrix.R')
##  source('~/ProgrammingAssignment2/testcachematrix.R')
##  testcachematrix()

testcachematrix <- function() {
    ## Test the cachematrix function
    ## Initialize a matrix
    message("..2x2 Matrix to be inverted")
    mx2 <- matrix(c(4,7, 2,6), nrow = 2, ncol = 2, byrow = TRUE)
    print(mx2)
    ## Get the special "matrix" object
    xc <- makeCacheMatrix(mx2)

    ## Get the inverse twice, the second time will be from the cache
    message("..Get the 2x2 inverse - first time")
    mx2i <- cacheSolve(xc)
    print(mx2i)
    message("..Get the 2x2 inverse - second time (should be from the cache)")
    print(cacheSolve(xc))

    ## Set a new matrix in the xc object to reset the cache
    message("set a new 3x3 matrix in the makeCacheMatrix object with function set")
    mx3 <- matrix(c(3,0,2, 2,0,-2, 0,1,1), nrow = 3, ncol = 3, byrow = TRUE)
    print(mx3)
    xc$set(mx3)

    ## Get the inverse twice, the second time will be from the cache
    message("..Get the 3x3 matrix inverse - first time")
    mx3i <- cacheSolve(xc)
    print(mx3i)
    message("..Get the 3x3 matrix inverse - second time (should be from the cache)")
    print(cacheSolve(xc))
}