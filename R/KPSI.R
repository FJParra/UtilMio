KPSI=function (a,b) {
  g=as.matrix(a)
  f=as.matrix(b)
  sum(g*log(abs(g)/((abs(g)+abs(f))/2)))+sum(f*log(abs(f)/((abs(g)+abs(f))/2)))
}





