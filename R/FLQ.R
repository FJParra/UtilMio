
RLQ=function(a,b) {
  as.numeric(a)
  as.numeric(b)
  n=length(a)
  # Calculamos SLQ
  SLQ=(a/sum(a))/(b/sum(b))
  RLQ=t(matrix(as.numeric(SLQ),ncol=n,nrow=n)%*%diag(1/log2(1+SLQ)))
  as.matrix(RLQ)}




