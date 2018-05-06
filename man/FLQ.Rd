
\name{FLQ}
  \alias{FLQ}
  \title{coeficientes de localización interindustrial de Flegg}
  \description{ Flegg y Webber (1996), para superar los problemas que caracterizaban a los procedimientos anteriores, especialmente la sobrestimación de la autosuficiencia de los distintos sectores productivos, propusieron el coeficiente FLQ(ij), cuyos principales elementos de este procedimiento son, por un lado, los CILQ (ij) y, por otro, el rol atribuido al tamaño de la economía regional: FLQ(ij)=CILQ(ij)[log2(1-xR/xN)]^c.
  }
  \usage{
    FLQ(a,b,c)
  }
  \arguments{
  \item{a}{vector de  valores añadidos de la región.}
  \item{b}{vector de  valores añadidos de la nacion.}
  \item{c}{escalar entre 0 y 1.}
   }
  \references{Flegg, A. T. y Webber, C. D. (1996): “Using Location Quotients to Estimate Regional Input-Output Coefficients and Multipliers”, Local Economic Quaterly, Vol. 4, p. 58-86.

Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
  \examples{
a=c(170,2227,403,821,4896,2484)
b=c(24019,129248,36320,63521,484087,216831)
FLQ(a,b,0.10)
  }

