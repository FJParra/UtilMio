\name{pSWAPE}
  \alias{pSWAPE}
  \title{ p − likelihood de SWAPE }
  \description{ Calcula el p − likelihood SWAPE
  pSWAPE=100*(1-SWAPE/200)

  }
  \usage{
    pSWAPE(a,b)
  }
    \arguments{
  \item{a}{matriz o data frame del MIO a evaluar.}
  \item{b}{matriz o data frame del MIO utilizado como referencia.}
   }
   \references{
Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
  \examples{
a=matrix(c(runif(36,0,0.2)),ncol=6)
b=matrix(c(runif(36,0,0.2)),ncol=6)
pSWAPE(a,b)
  }

\seealso{\code{\link[UtilMio]{SWAPE}}}
