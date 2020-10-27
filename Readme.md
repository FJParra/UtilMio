# UtilMio

La libreria contiene diversas funciones para regionalizar, modelizar y actualizar marcos imput-output.
Para la regionalización de una TIO a partir de otra de ambito superior emplean utilizando una mínima información 
se emplean los cocientes de localización (LQ). Entre ellos destaca el método FLQ (Flegg Location Quantion) 
o a su versión modificada AFLQ.
Para evaluar la similaridad entre tablas, hay varios metodos: WAPE, SWAPE, MASE y 	Psi de Kullback .
Una vez obtenidas dichas estimaciones, las mismas son susceptibles de posteriores ajustes 
con arreglo a la información disponible (real o incluso pronosticada). 
Las técnicas tradicionales, como el RAS básico, no son efectivas ya que para su aplicación, 
ya que necesitan conocer los márgenes de la matriz de consumos intermedios, 
de ahí que será preciso acudir a técnicas más complejas. En este sentido, 
se puede acudir a procedimientos de carácter global, tal como procede Eurostat. 
Este instituto emplea una técnica, conocida como el eurométodo (EU), diseñada por Beutel (2002), 
para elaborar el marco input-output (tabla simétrica y tablas supply-use) 
homogéneamente para los distintos estados que forman parte de la Unión Europea (Eurostat, 2008).
Finalmente, se incluye una modelización de impactos que utiliza los multiplicadores I y II del modelo de Leontief.



## Participación: dudas y consultas

Para cualquier comentario, duda o consulta que se desee realizar, se
puede abrir un [*Issue*](https://github.com/PacoParra/Utilmio/issues) en
este repositorio de GitHub.

Por último, y si quieres contactar directamente en caso de tener
problemas para instalar el paquete o acerca de su uso, puedes dirigirte
a Francisco Parra en la dirección de correo <parra_fj@cantabria.es>: él te
orientará acerca de los pasos a seguir.
