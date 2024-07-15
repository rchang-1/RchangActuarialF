RchangActuarialF: Comprehensive Financial and Actuarial Package in R | Paquete Financiero y Actuarial Integral en R: RchangActuarialF
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

APA Citation: Chang-López, R. (2024). R package RchangActuarial: Comprehensive Financial and Actuarial Package in R | Paquete Financiero y Actuarial Integral en R: RchangActuarial.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
By Doctor Roberto Enrique Chang López

About me
-
I am a professional-researcher with over 20 years of experience in the fields of economics, public policies, education, health, security, social security, climate change, and monetary and fiscal policy, both within national companies and international organizations. My expertise includes robust experience in time series analysis, programming, Big Data handling, Data Science and the development and evaluation of economic and financial models.

I currently serve on the Scientific Committee of the World Health Organization (WHO) Journal, as well as FLACSO Ecuador and other regional journals. Additionally, I am a professor at a national and international level, teaching Advanced Statistics for Scientific Research in R and Python, and have authored books available on Amazon and European libraries. Moreover, I have a substantial publication record of over a dozen scientific articles across various knowledge domains, both in English and Spanish.

Roberto Enrique Chang López
  http://orcid.org/0000-0003-1244-2431
  -
rchang@unah.edu.hn / rchang@unitec.edu
linkedin:https://www.linkedin.com/in/robertochanglopezphd/

Acerca de Mi
-

Soy un profesional-investigador con más de 20 años de experiencia en el área de economía, políticas públicas, educación, salud, seguridad, previsión social, cambio climático y política monetaria y fiscal, tanto en empresas nacionales como en organismos internacionales. Mi trayectoria incluye una sólida experiencia en el análisis de series de tiempo, programación, manejo de bases de datos (Big Data) y Data Science, así como la formulación y evaluación de modelos económicos y financieros.

Actualmente, formo parte del Comité Científico de la Revista de la World Health Organization (OMS), así como de FLACSO Ecuador y otras revistas regionales. También, ejerzo como profesor de doctorado a nivel nacional e internacional, impartiendo conocimientos en Estadística Avanzada para la Investigación Científica en R y Python, y he publicado libros en Amazon y librerías europeas. Además, cuento con una extensa publicación de más de una docena de artículos científicos en distintas áreas del conocimiento, en inglés y castellano.


rchang@unah.edu.hn / rchang@unitec.edu


linkedin:https://www.linkedin.com/in/robertochanglopezphd/

Roberto Enrique Chang López
  http://orcid.org/0000-0003-1244-2431
rchang@unah.edu.hn / rchang@unitec.edu
linkedin:https://www.linkedin.com/in/robertochanglopezphd/

Key Features | Características Clave
-
Actuarial Functions | Funciones Actuariales: Includes essential functions for calculating Net Present Value (NPV), Internal Rate of Return (IRR), and Modified Internal Rate of Return (MIRR).
Incluye funciones esenciales para calcular el Valor Presente Neto (VPN), la Tasa Interna de Retorno (TIR) y la Tasa Interna de Retorno Modificada (TIRM).
Portfolio Optimization | Optimización de Carteras: Tools for optimizing portfolio composition based on risk and return metrics, ensuring efficient investment strategies.
Herramientas para optimizar la composición de carteras basadas en métricas de riesgo y rendimiento, asegurando estrategias de inversión eficientes.
Amortization and Depreciation Schedules | Tablas de Amortización y Depreciación: Generates detailed tables for loan amortization and asset depreciation, facilitating financial planning and analysis.
Genera tablas detalladas para la amortización de préstamos y la depreciación de activos, facilitando la planificación y análisis financiero.
Bond and Stock Analysis | Análisis de Bonos y Acciones: Dedicated functions for calculating bond and stock prices and yields, providing crucial information for investment decision-making.
Funciones dedicadas para el cálculo de precios y rendimientos de bonos y acciones, proporcionando información crucial para la toma de decisiones de inversión.
Portfolio Analysis and Visualization | Análisis y Visualización de Carteras: Performs advanced portfolio analysis and visualizes results with interactive charts, enhancing understanding of investment performance.
Realiza análisis avanzados de carteras y visualiza resultados con gráficos interactivos, mejorando la comprensión del rendimiento de las inversiones.
Candlestick Charts and Market Data | Gráficos de Velas y Datos de Mercado: Retrieves and visualizes stock market data, including candlestick charts, for in-depth market analysis.
Obtiene y visualiza datos del mercado de valores, incluyendo gráficos de velas, para análisis profundos del mercado.
User-Friendly | Fácil de Usar: Easy installation and comprehensive documentation in English and Spanish, accessible to users worldwide.
Instalación sencilla y documentación completa en inglés y español, accesible para usuarios a nivel mundial




#Installation Installation in R Studio
-
Install and load the devtools library, then run:
devtools::install_github("rchang-1/RchangActuarialF")


Enter one or more numbers, or an empty line to skip updates
You can press enter, Skip updates

Installation in Google Colab
-

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
library("TTR") library("textshaping") 
library("quantmod") 
library("xts") 
library("htmltools") 
library("devtools")


Finally, execute: devtools::install_github("rchang-1/RchangActuarialF")
-
Instalación Instalación en R Studio
-
Instalar y cargar la librería devtools, luego ejecutar:
devtools::install_github("rchang-1/RchangActuarialF")


#Enter one or more numbers, or an empty line to skip updates


 #Puedes Darle enter, Skip updates (Salta los updates) 


Instalación en Google Colab 
-

Para trabajar en google colab to.R se sugiere antes de correr la línea anterior, ejecutar las siguientes: 
install.packages("plotly")
install.packages("htmltools") 
install.packages("devtools")
 install.packages("TTR") 
install.packages("textshaping")
install.packages("quantmod") install.packages("xts") 


Luego cargar las librerias 


library("plotly") 
library("TTR") 
library("textshaping") 
library("quantmod") 
library("xts") library("htmltools")
 library("devtools") 

Por último ejecutar: 
-
devtools::install_github("rchang-1/RchangActuarialF")

Explain
-
Usage
Below is an example of how to use the fv_single function to calculate the Future Value (FV) of a single cash flow. library(RchangActuarialF)
Calculate the Future Value
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
-

Uso


A continuación, se muestra un ejemplo de cómo usar la función fv_single para calcular el Valor Futuro (FV) de un flujo de efectivo único.
library(RchangActuarialF)


# Calcular el Valor Futuro
fv_single(100, 0.1, 3)


Explicación
-


Funciones Incluidas
fv_single(rate, cash_flow, periods): Calcula el Valor Futuro (FV) de un flujo de efectivo único.


fv(rate, cash_flows): Calcula el Valor Futuro (FV) dado una tasa de descuento y flujos de efectivo.


npv(rate, cash_flows): Calcula el Valor Presente Neto (NPV) dado una tasa de descuento y flujos de efectivo.


irr(cash_flows): Calcula la Tasa Interna de Retorno (IRR) de un conjunto de flujos de efectivo.


portfolio_optimization(returns, risks, target_return): Optimiza la composición de una cartera dada una tasa de retorno objetivo.


Contribuir
-


Las contribuciones son bienvenidas. Por favor, envía un pull request o abre un issue para discutir cualquier cambio que te gustaría hacer.


Asegúrate de reemplazar "rchang-1/RchangActuarialF" y "rchang-1/RchangActuarialF" con el nombre de usuario correcto en GitHub antes de usar este archivo README.



