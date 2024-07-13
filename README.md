RchangActuarialF

By Doctor Roberto Enrique Chang López

About me

I am a professional-researcher with over 20 years of experience in the fields of economics, public policies, education, health, security, social security, climate change, and monetary and fiscal policy, both within national companies and international organizations. My expertise includes robust experience in time series analysis, programming, Big Data handling, Data Science and the development and evaluation of economic and financial models.

I currently serve on the Scientific Committee of the World Health Organization (WHO) Journal, as well as FLACSO Ecuador and other regional journals. Additionally, I am a professor at a national and international level, teaching Advanced Statistics for Scientific Research in R and Python, and have authored books available on Amazon and European libraries. Moreover, I have a substantial publication record of over a dozen scientific articles across various knowledge domains, both in English and Spanish.

rchang@unah.edu.hn / rchang@unitec.edu
linkedin:https://www.linkedin.com/in/robertochanglopezphd/

Description (English)

RchangActuarialF is an R package that provides various actuarial functions for financial analysis, including NPV, IRR, portfolio optimization, and more.
Installation
To install the package from GitHub, use the following commands in R:

rchangunah.edu.hn / rchang@unitec.edu

Professor of Doctoral and Master's Programs in Systems, Economics, and Statistics for 
Scientific Research

Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica

#Installation
Installation in R Studio
1. Install and load the devtools library, then run:
```{r}
2. devtools::install_github("rchang-1/RchangActuarialF")
```
# Enter one or more numbers, or an empty line to skip updates
# You can press enter, Skip updates

Installation in Google Colab

To work in Google Colab to R, it is suggested to run the following lines before executing the previous line:

install.packages("plotly")
install.packages("htmltools")
install.packages("devtools")
install.packages("TTR")
install.packages("textshaping")
install.packages("quantmod")
install.packages("xts")
Then load the libraries
library("plotly")
library("TTR")
library("textshaping")
library("quantmod")
library("xts")
library("htmltools")
library("devtools")

Finally, execute:
devtools::install_github("rchang-1/RchangActuarialF")

Instalación
Instalación en R Studio
1.	Instalar y cargar la librería devtools, luego ejecutar:
```{r}
2.	devtools::install_github("rchang-1/RchangActuarialF")
```
#Enter one or more numbers, or an empty line to skip updates
#Puedes Darle enter, Skip updates (Salta los updates)
Instalación en Google Colab
Para trabajar en google colab to.R se sugiere antes de correr la línea anterior, ejecutar las siguientes:
install.packages("plotly")
install.packages("htmltools")
install.packages("devtools")
install.packages("TTR")
install.packages("textshaping")
install.packages("quantmod")
install.packages("xts")
Luego cargar las librerias
library("plotly")
library("TTR")
library("textshaping")
library("quantmod")
library("xts")
library("htmltools")
library("devtools")
Por último ejecutar:
devtools::install_github("rchang-1/RchangActuarialF")

Explain

Usage

Below is an example of how to use the fv_single function to calculate the Future Value (FV) of a single cash flow.
library(RchangActuarialF)

# Calculate the Future Value
fv_single(100, 0.1, 3)

Explain

Included Functions

fv_single(rate, cash_flow, periods): Calculates the Future Value (FV) of a single cash flow.

fv(rate, cash_flows): Calculates the Future Value (FV) given a discount rate and cash flows.

npv(rate, cash_flows): Calculates the Net Present Value (NPV) given a discount rate and cash flows.

irr(cash_flows): Calculates the Internal Rate of Return (IRR) of a set of cash flows.

portfolio_optimization(returns, risks, target_return): Optimizes the composition of a portfolio given a target return rate.

Contributing

Contributions are welcome. Please send a pull request or open an issue to discuss any changes you would like to make.

```markdown
# RchangActuarialF


## Descripción (Español)

RchangActuarialF` es un paquete de R que proporciona diversas funciones actuariales para el análisis financiero, incluyendo NPV, IRR, optimización de carteras y más.

Acerca de Mi

Soy un profesional-investigador con más de 20 años de experiencia en el área de economía, políticas públicas, educación, salud, seguridad, previsión social, cambio climático y política monetaria y fiscal, tanto en empresas nacionales como en organismos internacionales. Mi trayectoria incluye una sólida experiencia en el análisis de series de tiempo, programación, manejo de bases de datos (Big Data) y Data Science, así como la formulación y evaluación de modelos económicos y financieros.

Actualmente, formo parte del Comité Científico de la Revista de la World Health Organization (OMS), así como de FLACSO Ecuador y otras revistas regionales. También, ejerzo como profesor de doctorado a nivel nacional e internacional, impartiendo conocimientos en Estadística Avanzada para la Investigación Científica en R y Python, y he publicado libros en Amazon y librerías europeas. Además, cuento con una extensa publicación de más de una docena de artículos científicos en distintas áreas del conocimiento, en inglés y castellano.

rchang@unah.edu.hn / rchang@unitec.edu

linkedin:https://www.linkedin.com/in/robertochanglopezphd/

Explain

Instalación

Para instalar el paquete desde GitHub, utiliza los siguientes comandos en R:
# Instalar paquetes necesarios si no están instalados
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
if (!requireNamespace("htmltools", quietly = TRUE)) {
  install.packages("htmltools", dependencies = TRUE)
}
if (!requireNamespace("plotly", quietly = TRUE)) {
  install.packages("plotly")
}
if (!requireNamespace("quadprog", quietly = TRUE)) {
  install.packages("quadprog")
}

# Cargar paquetes
library(devtools)
library(htmltools)
library(plotly)
library(quadprog)

# Instalar RchangActuarialF desde GitHub
devtools::install_github("rchang-1/RchangActuarialF")

Uso

A continuación, se muestra un ejemplo de cómo usar la función fv_single para calcular el Valor Futuro (FV) de un flujo de efectivo único.
library(RchangActuarialF)

# Calcular el Valor Futuro
fv_single(100, 0.1, 3)

Explain

Funciones Incluidas
fv_single(rate, cash_flow, periods): Calcula el Valor Futuro (FV) de un flujo de efectivo único.

fv(rate, cash_flows): Calcula el Valor Futuro (FV) dado una tasa de descuento y flujos de efectivo.

npv(rate, cash_flows): Calcula el Valor Presente Neto (NPV) dado una tasa de descuento y flujos de efectivo.

irr(cash_flows): Calcula la Tasa Interna de Retorno (IRR) de un conjunto de flujos de efectivo.

portfolio_optimization(returns, risks, target_return): Optimiza la composición de una cartera dada una tasa de retorno objetivo.

Contribuir

Las contribuciones son bienvenidas. Por favor, envía un pull request o abre un issue para discutir cualquier cambio que te gustaría hacer.

Asegúrate de reemplazar "rchang-1/RchangActuarialF" y "rchang-1/RchangActuarialF" con el nombre de usuario correcto en GitHub antes de usar este archivo README.
 
