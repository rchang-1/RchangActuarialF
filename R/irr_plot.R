## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
# irr_plot
#' @title Internal Rate of Return (IRR) Function
#' @description Calculates the Internal Rate of Return (IRR) given a series of cash flows.
#' @param cash_flows A numeric vector of cash flows.
#' @param guess An initial guess for the IRR. Default is 0.1.
#' @return The Internal Rate of Return.
#' @examples
#' # Example usage:
#' # Returns the Internal Rate of Return for cash flows: -100, 50, 75, 200
#' irr(c(-100, 50, 75, 200))
#' @export
irr <- function(cash_flows, guess = 0.1) {
  uniroot(function(rate) npv(rate, cash_flows), c(-1, 1), tol = .Machine$double.eps)$root
}

#' @title Net Present Value (NPV) Function
#' @description Calculates the Net Present Value (NPV) given a discount rate and cash flows.
#' @param rate The discount rate.
#' @param cash_flows A numeric vector of cash flows.
#' @return The Net Present Value.
#' @examples
#' # Example usage:
#' # Calculates the NPV for a discount rate of 0.1 and cash flows: -100, 50, 75, 200
#' npv(0.1, c(-100, 50, 75, 200))
#' @export
npv <- function(rate, cash_flows) {
  sum(cash_flows / (1 + rate)^(0:(length(cash_flows) - 1)))
}

# Function to plot IRR against initial guesses using plotly
#' @title Internal Rate of Return (IRR) Plot Function
#' @description Plots the Internal Rate of Return (IRR) against a range of initial guesses using plotly.
#' @param cash_flows A numeric vector of cash flows.
#' @param guesses A numeric vector of initial guesses to plot. Default is seq(0.01, 0.5, by = 0.01).
#' @return An interactive plot of IRR against initial guesses.
#' @examples
#' # Example usage:
#' # Plots the IRR for cash flows: -100, 50, 75, 200
#' irr_plot(c(-100, 50, 75, 200))
#' @export
irr_plot <- function(cash_flows, guesses = seq(0.01, 0.5, by = 0.01)) {
  # Verificar si plotly está instalado
  if (!requireNamespace("plotly", quietly = TRUE)) {
    install.packages("plotly")
    library(plotly)
  } else {
    library(plotly)
  }


  irr_values <- sapply(guesses, function(guess) irr(cash_flows, guess))

  plot_ly(x = ~guesses, y = ~irr_values, type = 'scatter', mode = 'lines',
          line = list(color = 'blue', width = 2)) %>%
    layout(title = 'IRR vs. Initial Guess',
           xaxis = list(title = 'Initial Guess'),
           yaxis = list(title = 'Internal Rate of Return (IRR)'),
           shapes = list(
             list(type = 'line',
                  x0 = min(guesses), x1 = max(guesses),
                  y0 = 0, y1 = 0,
                  line = list(color = 'red', dash = 'dash'))
           ))
}

### Explicación:

# 1. **Función `irr`**:
#   - Calcula la Tasa Interna de Retorno (IRR) dado un vector de flujos de efectivo (`cash_flows`) y una conjetura inicial (`guess`). Utiliza `uniroot` para encontrar la raíz de la función de Valor Presente Neto (NPV).
#
# 2. **Función `npv`**:
#   - Calcula el Valor Presente Neto (NPV) dado una tasa de descuento (`rate`) y un vector de flujos de efectivo (`cash_flows`).
#
# 3. **Función `irr_plot`**:
#   - Utiliza `plotly` para generar un gráfico interactivo de la TIR (`irr`) en función de diferentes conjeturas iniciales (`guesses`).
#
# 4. **Documentación (`roxygen2` style)**:
#   - Se incluye la documentación para cada función, especificando el título, descripción, parámetros, ejemplos de uso y la exportación de las funciones para que estén disponibles fuera del archivo.
#
# Para usar estas funciones, asegúrate de instalar y cargar la biblioteca `plotly` si aún no lo has hecho:


#Para crear la función `irr` y su documentación correspondiente, así como generar un gráfico interactivo de la Tasa Interna de Retorno (TIR) utilizando `plotly`, aquí tienes el código organizado:

#' @title Internal Rate of Return (IRR) Function
#' @description Calculates the Internal Rate of Return (IRR) given a series of cash flows.
#' @param cash_flows A numeric vector of cash flows.
#' @param guess An initial guess for the IRR. Default is 0.1.
#' @return The Internal Rate of Return.
#' @examples
#' # Example usage:
#' # Returns the Internal Rate of Return for cash flows: -100, 50, 75, 200
#' irr(c(-100, 50, 75, 200))
#' @export
irr <- function(cash_flows, guess = 0.1) {
  uniroot(function(rate) npv(rate, cash_flows), c(-1, 1), tol = .Machine$double.eps)$root
}

#' @title Net Present Value (NPV) Function
#' @description Calculates the Net Present Value (NPV) given a discount rate and cash flows.
#' @param rate The discount rate.
#' @param cash_flows A numeric vector of cash flows.
#' @return The Net Present Value.
#' @examples
#' # Example usage:
#' # Calculates the NPV for a discount rate of 0.1 and cash flows: -100, 50, 75, 200
#' npv(0.1, c(-100, 50, 75, 200))
#' @export
npv <- function(rate, cash_flows) {
  sum(cash_flows / (1 + rate)^(0:(length(cash_flows) - 1)))
}

# Function to plot IRR against initial guesses using plotly
#' @title Internal Rate of Return (IRR) Plot Function
#' @description Plots the Internal Rate of Return (IRR) against a range of initial guesses using plotly.
#' @param cash_flows A numeric vector of cash flows.
#' @param guesses A numeric vector of initial guesses to plot. Default is seq(0.01, 0.5, by = 0.01).
#' @return An interactive plot of IRR against initial guesses.
#' @examples
#' # Example usage:
#' # Plots the IRR for cash flows: -100, 50, 75, 200
# irr_plot(c(-100, 50, 75, 200))
#' @export
irr_plot <- function(cash_flows, guesses = seq(0.01, 0.5, by = 0.01)) {
  library(plotly)

  irr_values <- sapply(guesses, function(guess) irr(cash_flows, guess))

  plot_ly(x = ~guesses, y = ~irr_values, type = 'scatter', mode = 'lines',
          line = list(color = 'blue', width = 2)) %>%
    layout(title = 'IRR vs. Initial Guess',
           xaxis = list(title = 'Initial Guess'),
           yaxis = list(title = 'Internal Rate of Return (IRR)'),
           shapes = list(
             list(type = 'line',
                  x0 = min(guesses), x1 = max(guesses),
                  y0 = 0, y1 = 0,
                  line = list(color = 'red', dash = 'dash'))
           ))
}


### Explicación:

# 1. **Función `irr`**:
#   - Calcula la Tasa Interna de Retorno (IRR) dado un vector de flujos de efectivo (`cash_flows`) y una conjetura inicial (`guess`). Utiliza `uniroot` para encontrar la raíz de la función de Valor Presente Neto (NPV).
#
# 2. **Función `npv`**:
#   - Calcula el Valor Presente Neto (NPV) dado una tasa de descuento (`rate`) y un vector de flujos de efectivo (`cash_flows`).
#
# 3. **Función `irr_plot`**:
#   - Utiliza `plotly` para generar un gráfico interactivo de la TIR (`irr`) en función de diferentes conjeturas iniciales (`guesses`).
#
# 4. **Documentación (`roxygen2` style)**:
#   - Se incluye la documentación para cada función, especificando el título, descripción, parámetros, ejemplos de uso y la exportación de las funciones para que estén disponibles fuera del archivo.
#
# Para usar estas funciones, asegúrate de instalar y cargar la biblioteca `plotly` si aún no lo has hecho:
#
#
# install.packages("plotly")
# library(plotly)
#
#
# Después de eso, puedes usar las funciones de la siguiente manera:
#
#
# # Ejemplo de uso de irr para calcular la TIR
# irr(c(-100, 50, 75, 200))
#
# # Ejemplo de uso de npv para calcular el NPV
# npv(0.1, c(-100, 50, 75, 200))
#
# # Ejemplo de uso de irr_plot para graficar la TIR en función de conjeturas iniciales
# irr_plot(c(-100, 50, 75, 200))
# Esto te permitirá calcular la Tasa Interna de Retorno, el Valor Presente Neto y visualizar la TIR en un gráfico interactivo utilizando `plotly`.
