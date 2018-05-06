
\name{RLQ}
  \alias{RLQ}
  \title{coeficientes de localización interindustrial de Round}
  \description{ Propuesta es la sugerida por Round (1978), simbolizada normalmente mediante la abreviatura RLQ. Su expresión es del siguiente modo: RLQ(ij) =SLQ(i)/log2[1+SLQ(j))].


  }
  \usage{
    RLQ(a,b)
  }
    \arguments{
  \item{a}{vector de  valores añadidos de la región.}
  \item{b}{vector de  valores añadidos de la nacion.}
   }
   \references{Round, J. I. (1978): “An Inter-regional Input-Output Approach to the Evaluation of Non-survey Methods”, Journal of Regional Science, Vol. 18, nº 2, pp 179-194.

Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
  \examples{
a=c(170,2227,403,821,4896,2484)
b=c(24019,129248,36320,63521,484087,216831)
RLQ(a,b)
  }

