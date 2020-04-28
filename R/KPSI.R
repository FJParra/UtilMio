KPSI = function (a,b) {
  g = as.matrix(a)
  f = as.matrix(b)
  A = sum(abs(g)*log(abs(g)/((abs(g)+abs(f))/2)),na.rm=TRUE)
  B = sum(abs(f)*log(abs(f)/((abs(g)+abs(f))/2)),na.rm=TRUE)
  C = A + B
  100*C/(log(2)*(sum(abs(g)+abs(f))))
}





