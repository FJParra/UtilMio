
\name{AFLQ}
  \alias{AFLQ}
  \title{coeficientes de localización interindustrial de Flegg aumentados}
  \description{Reformulación del FLQ propuesta por Flegg y Webber (2000)}
  \usage{AFLQ(a,b,c)}
  \arguments{
  \item{a}{vector de  valores añadidos de la región.}
  \item{b}{vector de  valores añadidos de la nacion.}
  \item{c}{escalar entre cero y uno.}
   }
\references{Flegg A. T. y Webber C. D. (2000): “Regional Size, Regional Specialization and the FLQ Formula”, University of the West of England, Bristol.

Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
\examples{
a=c(170,2227,403,821,4896,2484)
b=c(24019,129248,36320,63521,484087,216831)
AFLQ(a,b,0.10)
  }

