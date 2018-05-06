
RegioFLQ=function(a,b,c,N) {
  as.matrix(N)
  # Bucle para obtener los coeficientes
  n=length(a)
  CILQ.0=CILQ(a,b)
  CILQ.1=CILQ.0
  FLQ.1=FLQ(a,b,c)
  for (i in 1:n) {
    for (j in 1:n) { CILQ.0[i,j]=CILQ.1[i,j]>1
    }
  }
  for (i in 1:n) {
    for (j in 1:n) { CILQ.1[i,j]=CILQ.1[i,j]<=1
    }
  }
  A.R=as.matrix(N*CILQ.0+N*FLQ.1*CILQ.1,nrow=n)
  as.matrix(A.R)}
