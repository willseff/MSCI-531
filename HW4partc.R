eplison <- 0.01 
lambda <- 0.992
v <- matrix(c(0,0,0,0,0,0,0,0,0,0))
p.wait <- as.matrix(read.table('p.txt'))
r.trans <- as.matrix(c(65,60,55,50,45,40,35,30,0,0))


max(1 + p.wait[1,]*v,r.trans[1])
max(1 + p.wait[2,]*v,r.trans[2])

func <- function(arg) {
  if (arg > 8) {return(0)}
  return(max(1+0.992*p.wait[arg,]*v,r.trans[arg]))
}

v <- sapply(c(1:10),func)
