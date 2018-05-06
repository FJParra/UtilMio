\name{SWAPE}
  \alias{SWAPE}
  \title{Media simétrica de los porcentajes de error en valor absoluto }
  \description{ Calcula el SWAPE de la tabla estimada a, frente a la b. Las tablas tienes que ser matrices o data.frame
  }
  \usage{SWAPE(a,b)}
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
SWAPE(a,b)
  }

