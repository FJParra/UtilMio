
MOSLQ=function (a,b) {
  as.numeric(a)
  as.numeric(b)
  n=length(a)
  # Calculamos SLQ
  SLQ=(a/sum(a))/(b/sum(b))
  # Calculamos CILQ
  CILQ1=CILQ(a,b)
  MOSLQ=CILQ1
  for(i in seq(1:n)) {MOSLQ[i,i]=as.numeric(SLQ[i])}
  as.matrix(MOSLQ)}


