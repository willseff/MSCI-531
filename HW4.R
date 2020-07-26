# first iteration
p <- as.matrix(read.table('p.txt'))
r.o <- matrix(c(1,1,1,1,1,1,1,1,0,0), ncol = 1)
v.o <- solve(diag(10) - 0.992*p) %*% r.o
  
# second iteration
p.1 <- as.matrix(read.table('p1.txt'))
r.1 <- matrix(c(65,60,55,50,45,40,35,30,0,0), ncol = 1)
v.1 <- solve(diag(10) - 0.992*p.1) %*% r.1

# 3rd interation
p.2 <- as.matrix(read.table('p2.txt'))
r.2 <- matrix(c(1,1,55,50,45,40,35,30,0,0), ncol = 1)
v.2 <- solve(diag(10) - 0.992*p.2) %*% r.2