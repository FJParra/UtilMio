
FLQ= function(a,b,c) {
  as.numeric(a)
  as.numeric(b)
  coef=log2(1+(a/b))^c
  CILQ1=CILQ(a,b)
  FLQ=CILQ1%*%diag(as.numeric(coef))
  as.matrix(FLQ)}



