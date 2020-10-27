
CILQ=function(a,b) {
as.numeric(a)
as.numeric(b)
n=length(a)
# Calculamos SLQ
SLQ=(a/sum(a))/(b/sum(b))
# Calculamos CILQ
CILQ=matrix(SLQ,ncol=n,nrow=n)%*%diag(1/SLQ)
as.matrix(CILQ)}

