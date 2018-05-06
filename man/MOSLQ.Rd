
\name{MOSLQ}
  \alias{MOSLQ}
  \title{coeficientes de localización interindustrial modificados}
  \description{ coeficientes de localización interindustrial- CILQ- se basa en una hipótesis engañosa que está implícita, si i=j, implica que todos los sectores pueden satisfacer toda la demanda de su propio sector a nivel local, indistintamente del tamaño del sector. Morrison y Smith (1974) modificaron el CILQ correspondiente a los elementos de la diagonal principal de la siguiente forma: MOSLQ(ij) =CILQ(ij)SLQ(i).
  }
  \usage{
    MOSLQ(a,b)
  }
  \arguments{
  \item{a}{vector de  valores añadidos de la región.}
  \item{b}{vector de  valores añadidos de la nacion.}
   }
  \references{Morrison, W. I. y Smith, P. (1974): “Non-Survey Input-Output Techniques at the Small Area Level: An Evaluation”, Journal of Regional Science, Vol. 14, nº 1, p. 1-14.

Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
  \examples{
a=c(170,2227,403,821,4896,2484)
b=c(24019,129248,36320,63521,484087,216831)
MOSLQ(a,b)
  }

