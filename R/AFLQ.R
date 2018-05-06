
AFLQ = function(a,b,c) {
  as.numeric(a)
  as.numeric(b)
  FLQ.0=FLQ(a,b,c)
  FLQ.1=FLQ.0
  n=length(a)
  # Calculamos SLQ
  SLQ=(a/sum(a))/(b/sum(b))
  for (i in 1:n) {
    for (j in 1:n) { FLQ.0[i,j]=SLQ[j]>1
    }
  }
  for (i in 1:n) {
    for (j in 1:n) { FLQ.1[i,j]=SLQ[j]<=1
    }
  }
  FLQ.1*FLQ(a,b,c)
  AFLQ=log2(1+SLQ)
  FLQ.0=FLQ.0%*%diag(as.numeric(AFLQ))
  FLQ.0
  AFLQ=FLQ.1*FLQ(a,b,c)+FLQ.0*AFLQ
  as.matrix(AFLQ)}




