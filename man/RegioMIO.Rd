
\name{RegioMIO}
  \alias{RegioMIO}
  \title{Obtencion de Coeficientes técnicos regionales por CL}
  \description{ Regionaliza utilizando los siguientes coeficientes de localización interindustrial(CL): MOSLQ,RLQ,AFLQ,FLQ (por defecto).  Se obtienen los coeficientes técnicos regionales (A.R) a partir de los nacionales (A.N):
  A.R(i,j)=A.N(i,j)CL(i,j) si CL(i)<=1
  A.R(i,j)=A.N(i,j) si CL(i)>1
Los metodos FLQ y AFLQ son como se desarrollan en y Flegg y Webber (1996)  Flegg y Webber (2000)
  }
  \usage{
    RegioMIO(a,b,N,method="FLQ",delta)
  }
  \arguments{
  \item{a}{vector de  valores añadidos de la región.}
  \item{b}{vector de  valores añadidos de la nacion.}
  \item{N}{matriz de coeficientes téncicos nacionales.}
  \item{method}{"MOSLQ","RLQ","AFLQ","FLQ" (por defecto)}
  \item{delta}{escalar entre 0 y 1; 0.10 (por defecto)}
   }
  \references{Flegg, A. T. y Webber, C. D. (1996): “Using Location Quotients to Estimate Regional Input-Output Coefficients and Multipliers”, Local Economic Quaterly, Vol. 4, p. 58-86.

  Flegg A. T. y Webber C. D. (2000): “Regional Size, Regional Specialization and the FLQ Formula”, University of the West of England, Bristol.


  Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
  \examples{
N=matrix(c(runif(36,0,0.2)),ncol=6)
a=c(170,2227,403,821,4896,2484)
b=c(24019,129248,36320,63521,484087,216831)
RegioMIO(a,b,N)
RegioMIO(a,b,N,method="MOSLQ")
RegioMIO(a,b,N,method="FLQ",delta=0.01)
  }


