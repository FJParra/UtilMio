
EFMIO = function(TO,TDu,TDy,w,vab,Empleo,vector){
  ## Coeficientes tecnicos interior e inversa de leontief
  r=dim(TO)[2]
  p=dim(TO)[1]
  CI=rowSums(TDu)
  TDu=data.frame(TDu,CI)
  CI_int=as.matrix(TDu[1:r,1:r])
  PT=colSums(TO)[1:r]
  EVAB=matrix(vab/PT)
  Prodt=matrix(as.numeric(Empleo)/PT)
  EVAB[is.na(EVAB)]=0
  Prodt[is.na(Prodt)]=0
  PT=diag(1/PT)
  PT[is.na(PT)]=0
  CT=CI_int%*%PT
  CT[is.na(CT)]=0
  I=diag(c(rep(1,r)))
  B=solve(I-CT)

  ## Matriz orlada, e inversa de leontief de la matriz orlada.

  VC=(TDy[1:r,1]+TDy[(1+r):(r+r),1])/sum(TDy[1:(r+r),1])
  CTO=cbind(CT,VC)
  CTO=rbind(CTO,w)
  I=diag(c(rep(1,r+1)))
  BO=solve(I-as.matrix(CTO))

  ## Multiplicadores I


 vector_I=as.matrix(as.numeric(t(vector[1:p])))
 Mult_I=B%*%vector_I


  ## Multiplicadores II


  vector_II=as.matrix(as.numeric(t(c(vector,0))))
  Mult_II=BO%*%vector_II

  ## Efectos VAB

  Indirectos_VAB=vector_I*EVAB
  Inducidos_I_VAB=Mult_I*EVAB-Indirectos_VAB
  Inducidos_II_VAB=Mult_II[1:p]*EVAB-Indirectos_VAB-Inducidos_I_VAB
  Totales_VAB=Indirectos_VAB+Inducidos_I_VAB+Inducidos_II_VAB
  Efectos_VAB=data.frame(Indirectos=Indirectos_VAB,Inducidos_I=Inducidos_I_VAB,Inducidos_II=Inducidos_II_VAB,Totales=Totales_VAB)

  ## Efectos Empleo

  Indirectos_Empleo=vector_I*Prodt
  Inducidos_I_Empleo=Mult_I*Prodt-Indirectos_Empleo
  Inducidos_II_Empleo=Mult_II[1:p]*Prodt-Indirectos_Empleo-Inducidos_I_Empleo
  Totales_Empleo=Indirectos_Empleo+Inducidos_I_Empleo+Inducidos_II_Empleo
  Efectos_Empleo=data.frame(Indirectos=Indirectos_Empleo,Inducidos_I=Inducidos_I_Empleo,Inducidos_II=Inducidos_II_Empleo,Totales=Totales_Empleo)

  list(VAB=Efectos_VAB,Empleo=Efectos_Empleo)
}
