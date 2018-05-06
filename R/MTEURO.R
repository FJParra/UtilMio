MTEURO <- function (T1,act,nd,f,m) {
  n <- dim(T1)[2]-nd
  T1 <- as.matrix(T1)
  act <- as.matrix(act)
  # primera iteracción
  wo<- c(act[1:n],act[1:n],act[n+nd+1]) # tasas 1 a n y tasa va
  rm <- diag(wo)
  T2 <- rm %*% T1
  wi <- c(act[1:n],act[(n+1):(n+nd)]) # tasa 1 a n y tasa cons y export
  cm <- diag(wi)
  T3 <- T1 %*% cm
  T4 <- (T3+T2)/2
  T4 <- rbind(T4[1:(2*n),],T3[(2*n+1),])


  # Saca (r1:r3, c1:c3) Cear funcion inversa de leotief

  coef=t(T4)/colSums(T4)
  coef2=t(coef)
  coef2[is.nan(coef2)]<-0
  coef4<-coef2[1:n,1:n] # n sectores
  i <- c(rep(1,n))
  Id <- diag(i)
  leontief=Id-coef4
  inversa=solve(leontief)
  inversa[is.nan(inversa)]<-0
  Df <- rowSums(T4[,(n+1):(n+nd)])
  Dfinal <- matrix(Df[1:n],ncol=1)
  O <- inversa %*% Dfinal
  O2 <- colSums(T4)
  O3 <- c(O,O2[(n+1):(n+nd)])
  dou <- diag(O3)
  MIO2 <- coef2 %*% dou


  # iteracciones
  for (i in 1:m) {
    sum1 <- colSums(T1)
    sum2 <- colSums(MIO2)
    sum3 <- rowSums(T1)
    sum4 <- rowSums(MIO2)
    pro <- c(MIO2[(2*n+1),1:n]/T1[(2*n+1),1:n],sum2[(n+1):(n+nd)]/sum1[(n+1):(n+nd)],sum4[(2*n+1)]/sum3[(2*n+1)],sum(sum4[(n+1):(n+n)])/sum(sum3[(n+1):(n+n)]))
    pro[is.nan(pro)]<-0
    desv <- act/pro
    desv[is.nan(desv)]<-1
    delta <- desv-1
    coef <- ifelse(delta<0,1-(((1-desv)*100)^f)/100,1+(((desv-1)*100)^f)/100)
    rev1 <- c(coef[1:n],rep(coef[(n+nd+2)],n),coef[(n+nd+1)])
    wo <- rev1*wo
    rm <- diag(wo)
    IOW1 <- rm %*% T1
    rev2 <- c(coef[1:(n+nd)])
    wi <- wi*rev2
    cm <- diag(wi)
    IOW2 <- T1 %*% cm
    IOW3 <- 0.5*IOW2+0.5*IOW1
    IOW4 <- rbind(IOW3[1:(2*n),],IOW2[(2*n+1),])
    IOW4[is.nan(IOW4)]<-0
    coef=t(IOW4)/colSums(IOW4)
    coef2=t(coef)
    coef2[is.nan(coef2)]<-0
    coef4<-coef2[1:n,1:n]
    i <- c(rep(1,n))
    Id <- diag(i)
    leontief=Id-coef4
    inversa=solve(leontief)
    inversa[is.nan(inversa)]<-0
    Df <- rowSums(IOW4[,(n+1):(n+nd)])
    Dfinal <- matrix(Df[1:n], ncol=1)
    O <- inversa %*% Dfinal
    O2 <- colSums(IOW4)
    O3 <- c(O,O2[(n+1):(n+nd)])
    dOu <- diag(O3)
    MIO2 <- coef2 %*% dOu}
  act=matrix(act,ncol=1)
  pro=matrix(pro,ncol=1)
  desv=matrix(desv,ncol=1)
  resultados=data.frame(cbind(act,pro,desv))
  names(resultados)=c("act","pro","desv")
  list(resultados=resultados,MIO=as.matrix(MIO2))
}




