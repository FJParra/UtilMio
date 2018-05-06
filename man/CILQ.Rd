
\name{CILQ}
  \alias{CILQ}
  \title{coeficientes de localización interindustrial}
  \description{
   Los coeficientes de localización interindustrial (CILQ) cuantifican, para una determinada región, la importancia relativa de la industria suministradora i respecto a la industria compradora j, para mayor detalle véase Schaffer y Chu (1969). Se obtienen a partir del cociente (SLQ) entre porcentaje de valor añadido del sector (i) de la región (R) y el porcentaje de valor añadido del sector (i) de la nación (N).
  }
  \usage{
    CILQ(a,b)
  }
  \arguments{
  \item{a}{vector de  valores añadidos de la región.}
  \item{b}{vector de  valores añadidos de la nacion.}
   }
   \references{Schaffer, A. y Chu, A. (1969): “Non-survey Techniques for Constructing Regional Interindustry Models”, Papers of the Regional Science Association, Vol. 23, pp 83-101.

Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
  \examples{
a=c(170,2227,403,821,4896,2484)
b=c(24019,129248,36320,63521,484087,216831)
CILQ(a,b)
  }

