## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function, Special Matrix

makeCacheMatrix <- function (x = matrix ()) {
        m <- NULL
        set <- function (y) {
                x <<- y
                m <<- NULL
        }
        get <- function () x
        setresolver <- function (solve) m <<- resolver
        getresolver <- function () m
        list (set = set,
              get = get,
              setresolver = setresolver,
              getresolver = getresolver)
}

## Write a short comment describing this function, Caching the inverse of a Matrix

cacheSolve <- function (x, ...) {
        m <- x $ getresolver ()
        if (! is.null (m)) {
                message ("obtener cache")
                return (m)
        }
        data <- x $ get ()
        m <- solve (datos, ...)
        x $ setresolver (m)
        m
}
