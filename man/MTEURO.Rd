
\name{MTEURO}
  \alias{MTEURO}
  \title{Proyección de una Tabla Input-Output por el método Euro}
  \description{La idea básica del método EURO (Beutel, 2002) es aprovechar las predicciones macroeconómicas oficiales que se estiman en el ámbito de las Contabilidades Nacionales o Regionales, y que se publican con periodicidad anual para, a partir de una tabla Input-Output de referencia, derivar una nueva tabla Input-Output proyectada para aquellos años en los que disponemos de dichas predicciones macroeconómicas y que, esta proyección sea a su vez consistente con las citadas predicciones macroeconómicas oficiales.

La versión del método EURO que aparece en Eurostat (2008) tiene como obtetivo la proyección de tablas Input-Output simétricas, y al igual que el RAS es un procedimiento iterativo. Pero a diferencia de aquel en el que sólo se actualiza la matriz de coeficientes técnicos, en el método EURO intervienen todos los elementos de la tabla simétrica:

- Consumos intermedios diferenciando el origen entre consumos interiores e importados

- Valor añadido y sus componentes

- Producción interior

- Demanda final diferenciada por usos y por origen de los empleos

El método Euro está diseñado para ser utilizado con tablas simétricas, con el mismo número de ramas y productos}
  \usage{MTEURO(T1,act,nd,f,m)}
  \arguments{
  \item{T1}{ Tabla base de destino interior e importaciones.}
  \item{act}{Indices de valores a proyectar.}
  \item{nd}{Número de sectores de demanda final.}
  \item{f}{Factor para corregir las desviaciones típicas.}
  \item{m}{número de iteraciones.}
  }
   \value{
   \item{resultados}{Tabla para evaluar los resultados del ajuste}
   \item{MIO}{Tabla base de destino interior e importaciones proyectada}
   }

\references{Beutel, J. (2008) " An Input-Output System of Economic Accounts for the EU Member States". InterimReport for Service Contract Number 150830-2007 FISC-D to European Commission. Directorate-General Joint Research Centre. Institute for Prospective Technological Studies.

EUROSTAT (2008) "European Manual of Supply, Use and Input-Output Tables". Methodologies and Working Papers. Offce for Official Publications of the European Communities, pp. 451-475.

Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
\examples{
act<- c(0.9500,1.0200,1.0700,1.0525, 1.0164,1.0293,1.0483) # Tasas

MIO <- c(16.00,28.00,6.00,15.00,35.00,
 12.00, 144.00, 24.00, 90.00, 130.00,
 9.00, 64.00, 16.00, 45.00, 66.00,
 4.00, 6.00, 4.00, 15.00, 0.00,
 8.00, 8.00, 16.00, 90.00, 0.00,
 1.00, 8.00, 4.00, 45.00, 0.00,
 50.00, 142.00, 130.00, 0.00, 0.00)
MIO1 <- matrix(MIO, ncol=7)
T1 <- t(MIO1)
MIOT=MTEURO(T1,act,2,0.0025,100)
MIOT$resultados
MIOT$MIO
MIOT
  }

