# utilmio

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


## Instalación

El paquete `Utilmio` se puede instalar desde GitHub con:

``` r
if (!"devtools" %in% installed.packages())
  install.packages("Utilmio")
devtools::install_github("PacoParra/Utilmio", build_opts = c("--no-resave-data", "--no-manual"))
```

**IMPORTANTE**: si trabajas desde un ordenador conectado a la red a
través de un *proxy*, es muy importante que te asegures de que tu
conexión esté bien configurada. Para ello debes ejecutar esta serie de
comandos (sustituyendo el texto por los valores apropiados de tu centro:
pregunta al servicio de informática):

``` r
if (!"httr" %in% installed.packages())
  install.packages("httr")
httr::set_config(
  httr::use_proxy(
    url      = "xxx.xxx.xxx.xx",
    port     = 0000,
    username = "usuario",
    password = "clave"
  )
)
```



## Participación: dudas y consultas

Para cualquier comentario, duda o consulta que se desee realizar, se
puede abrir un [*Issue*](https://github.com/PacoParra/Utilmio/issues) en
este repositorio de GitHub.

Si deseases aportar algo al proyecto, puedes modificar el código a tu
antojo y abrir un [*Pull
Request*](https://github.com/fisabio/medear/pulls) en el repositorio.

Por último, y si quieres contactar directamente en caso de tener
problemas para instalar el paquete o acerca de su uso, puedes dirigirte
a Francisco Parra en la dirección de correo <parra_fj@cantabria.es>: él te
orientará acerca de los pasos a seguir.
