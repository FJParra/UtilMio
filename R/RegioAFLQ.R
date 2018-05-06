
RegioAFLQ=function(a,b,c,N) {
  # Bucle para obtener los coeficientes
  n=length(a)
  CILQ.0=CILQ(a,b)
  CILQ.1=CILQ.0
  AFLQ.1=AFLQ(a,b,c)
  for (i in 1:n) {
    for (j in 1:n) { CILQ.0[i,j]=CILQ.1[i,j]>1
    }
  }
  for (i in 1:n) {
    for (j in 1:n) { CILQ.1[i,j]=CILQ.1[i,j]<=1
    }
  }
  A.R=as.matrix(N*CILQ.0+N*AFLQ.1*CILQ.1,nrow=n)
  as.matrix(A.R)}
