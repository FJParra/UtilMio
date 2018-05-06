deltaFLQ=function(vr,vn,R,N,method="WAPE") {
  coef=seq(0.01,1,by=0.01)
  dist=NA
  n=length(vr)
  for (k in coef) {
    FLQ.0=FLQ(vr,vn,k)
    CILQ.0=CILQ(vr,vn)
    CILQ.1=CILQ.0
    for (i in 1:n) {
      for (j in 1:n) { CILQ.0[i,j]=CILQ.0[i,j]>1
      }
    }
    for (i in 1:n) {
      for (j in 1:n) { CILQ.1[i,j]=CILQ.0[i,j]<=1
      }
    }
    A.R=N*CILQ.0+N*FLQ.0*CILQ.1
    m=ifelse(method=="WAPE",WAPE(A.R,R),ifelse(method=="SWAPE",SWAPE(A.R,R),ifelse(method=="MASE",MASE(A.R,R),ifelse(method=="KPSI",KPSI(A.R,R),WAPE(A.R,R)))))
    dist=c(dist,m)
  }
  RES=data.frame(coef,dist=dist[2:101])
  delta=subset(RES,dist==min(RES$dist))
  as.numeric(delta[1])}








