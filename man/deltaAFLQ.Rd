
\name{deltaAFLQ}
  \alias{deltaAFLQ}
  \title{Coeficiente delta para la función AFLQ }
  \description{ busca el mejor coeficiente delta para la función AFLQ, con los siguitentes parámetros:
  }
  \usage{
   deltaAFLQ(vr,vn,R,N,method="WAPE")
  }
    \arguments{
  \item{vr}{vector de valores añadidos regionales.}
  \item{vn}{vector de valores añadidos nacionales.}
  \item{R  }{Matriz de coeficientes interindustriales regionales.}
  \item{N}{Matriz de coeficientes interindustriales regionales.}
  \item{method}{"WAPE","SWAPE","MASE" ó "KPSI". Por defecto utiliza el "WAPE"}

   }
   \references{
Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
  \examples{
vr=c(170,2227,403,821,4896,2484)
vn=c(24019,129248,36320,63521,484087,216831)
R=matrix(c(runif(36,0,0.2)),ncol=6)
N=matrix(c(runif(36,0,0.2)),ncol=6)
deltaAFLQ(vr,vn,R,N)
  }
 \seealso{\code{\link[UtilMio]{AFLQ}}}


