
\name{EFMIO}
  \alias{EFMIO}
  \title{Efectos sobre el VAB y Empleo con matriz orlada}
  \description{Obtiene las predicciones con el modelo Input-Output con los multiplicadores Miyazawa, K. (1976), a través de la matriz orlada. Dichas predicciones nos permiten valorar los impactos o efectos sectoriales que tiene un aumento de la Demanda Final de un complejo industrial en el conjunto de la economía.

Dichos efectos o impactos macroeconómicos se pueden dividir en tres tipos:

Un efecto directo provocado por el aumento de la demanda final del complejo el cual provoca un aumento de la producción del mismo con objeto de cubrir el aumento de demanda.

Unos efectos indirectos en el resto de sectores que suministran inputs a las ramas que forman el complejo, las cuales, ante el aumento de demanda, realizarán mayores pedidos a sus proveedores para poder aumentar su producción.

Unos efectos inducidos producidos a causa del aumento de demanda de inputs que realizan las ramas afectadas por los efectos indirectos, lo cual se transmite al conjunto de sectores de la economía.

Finalmente, los efectos señalados anteriormente producen a su vez un incremento de las rentas salariales lo que, dado el supuesto de consumo como variable dependiente de la renta, provoca un aumento del consumo lo que da como resultado nuevos aumentos de demanda final. Es lo que denominamos efecto renta. }
  \usage{EFMIO(TO,TDu,TDy,w,vab,Empleo,vector)}
  \arguments{
  \item{TO}{Matriz Tabla de Origen.}
  \item{TDu}{Matriz Tabla de destino.En la ultima columna el total de consumos intermedios}
  \item{TDy}{Matriz Tabla de demanda final.}
  \item{w}{Vector fila con los coeficiente de los salarios sobre el VAB, se añade un cero en el ultimo campo}
  \item{vab}{Vector fila con los valores añadidos.}
  \item{Empleo}{Vector fila con los trabajadores ocupados en cada rama.}
  \item{vector}{Vector Nueva demanda final.}
   }
   \value{
   \item{VAB}{Tabla por ramas de los efectos Indirectos, Inducidos I,Inducidos II, Totales }
   \item{Empleo}{Tabla por ramas de los efectos Indirectos, Inducidos I,Inducidos II, Totales}
   }
\references{

Parra, F. (2018), Técnicas de Análisis Input-Output con R, (https://wordpress.com/view/modelosinputoutput.wordpress.com)
}
\examples{
TDu=c(16.00,28.00,6.00, 12.00, 144.00, 24.00, 9.00, 64.00, 16.00, 4,6,4,8,8,16,1,8,4)
TDy = c(15,35,90,130,45,66,15,0,90,0,45,0)
TO=c(100,400,200)
TO=diag(TO)
TDu <- matrix (TDu, nrow=3)
TDu =t(TDu)
TDy =matrix (TDy, nrow=2)
TDy=t(TDy)
vab=c(50,142,130)
w=c(0.50,0.40,0.60,0)
empleo=c(10,15,20)
vector=c(1,0,0)
impacto= EFMIO(TO,TDu,TDy,w,vab,empleo,vector)
print(impacto)
}

