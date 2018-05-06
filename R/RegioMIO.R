
RegioMIO=function(a,b,N,method="FLQ",delta=0.1) {
  as.numeric(a)
  as.numeric(b)
  as.matrix(N)
  # Bucle para metodos
  n=length(a)
  D <- as.numeric(delta)
  if(method=="MOSLQ") {
    MOSLQ.0=MOSLQ(a,b)
    MOSLQ.1=MOSLQ.0
    for (i in 1:n) {
      for (j in 1:n) { MOSLQ.0[i,j]=MOSLQ.1[i,j]>1
      }
    }
    for (i in 1:n) {
      for (j in 1:n) { MOSLQ.1[i,j]=MOSLQ.1[i,j]<=1
      }
    }
    A.R=as.matrix(N*MOSLQ.0+N*MOSLQ(a,b)*MOSLQ.1,nrow=n)
    as.matrix(A.R)} else {if(method=="RLQ") {
      RLQ.0=RLQ(a,b)
      RLQ.1=RLQ.0
      for (i in 1:n) {
        for (j in 1:n) { RLQ.0[i,j]=RLQ.1[i,j]>1
        }
      }
      for (i in 1:n) {
        for (j in 1:n) { RLQ.1[i,j]=RLQ.1[i,j]<=1
        }
      }
      A.R=as.matrix(N*RLQ.0+N*RLQ(a,b)*RLQ.1,nrow=n)
      as.matrix(A.R)} else {
        if(method=="AFLQ") {
          RegioAFLQ(a,b,D,N)} else {RegioFLQ(a,b,D,N)}
      }
    }
}
