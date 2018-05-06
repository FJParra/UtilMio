
\name{RegioAFLQ}
  \alias{RegioAFLQ}
  \title{Coeficientes técnicos regionales de Flegg aumentados}
  \description{ Partiendo de los coeficientes de localización interindustrial de Flegg y Webber (1996), se obtienen los coeficientes técnicos regionales (A.R) a partir de los nacionales (A.N):
  A.R(i,j)=A.N(i,j)AFLQ(i,j) si CILQ(i)<=1
  A.R(i,j)=A.N(i,j) si CILQ(i)>1

  }
  \usage{
    RegioAFLQ(a,b,c,N)
  }
  \arguments{
  \item{a}{vector de  valores añadidos de la región.}
  \item{b}{vector de  valores añadidos de la nacion.}
  \item{c}{escalar entre 0 y 1.}
  \item{N}{matriz de coeficientes téncicos nacionales.}
   }
  \references{Flegg A. T. y Webber C. D. (2000): “Regional Size, Regional Specialization and the FLQ Formula”, University of the West of England, Bristol.

Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
  \examples{
N=matrix(c(runif(36,0,0.2)),ncol=6)
a=c(170,2227,403,821,4896,2484)
b=c(24019,129248,36320,63521,484087,216831)
RegioAFLQ(a,b,0.10,N)
  }
\seealso{\code{\link[UtilMio]{AFLQ}}}
