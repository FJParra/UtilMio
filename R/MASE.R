MASE=function(a,b) {
  g=as.matrix(a)
  f=as.matrix(b)
  m=dim(g)[1]
  n=dim(g)[2]
  c=matrix(rep(mean(f),n*m),nrow=m)
  m*n*(sum(abs(g-f))/sum(abs(f-c)))
}




