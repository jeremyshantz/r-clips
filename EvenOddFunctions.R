# Determines whether the function is odd: f(-x) = -f(x)
isodd <- function(func, i) {
    
    # assign to the outer context, the func has no access to to locals
    i <<- abs(i)
    eval(func) == -(eval(func))
}

# Determines whether the function is even: f(-x) = f(x)
iseven <- function(func, i) {
    
    i <<- -(abs(i))
    a = eval(func) 
    
    i <<- abs(i)
    b = eval(func)
    
    a == b
}
