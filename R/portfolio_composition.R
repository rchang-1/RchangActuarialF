#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#'
#' Plot Portfolio Composition
#'
#' This function plots the composition of a portfolio given asset weights and names.
#'
#' @param weights A numeric vector of asset weights.
#' @param asset_names A character vector of asset names.
#' @return A ggplot2 object representing the portfolio composition.
#' @examples
#' weights <- c(0.3, 0.5, 0.2)
#' asset_names <- c("Stock A", "Stock B", "Stock C")
#' portfolio_composition(weights, asset_names)
#' @export
portfolio_composition <- function(weights, asset_names) {
  library(ggplot2)

  # Round weights to nearest hundred and remove decimals
  rounded_weights <- round(weights * 100, 0)

  df <- data.frame(
    Asset = asset_names,
    Weight = rounded_weights
  )

  ggplot(df, aes(x = "", y = Weight, fill = Asset)) +
    geom_bar(width = 1, stat = "identity") +
    coord_polar("y") +
    labs(title = "Portfolio Composition", x = "", y = "") +
    theme_minimal()
}

weights <- c(0.3, 0.5, 0.2)
asset_names <- c("Stock A", "Stock B", "Stock C")
portfolio_composition(weights, asset_names)

#' Graficar la Composición del Portafolio
#'
#' Esta función grafica la composición de un portafolio dados los pesos y nombres de los activos.
#'
#' @param pesos Un vector numérico con los pesos de los activos.
#' @param nombres_activos Un vector de caracteres con los nombres de los activos.
#' @return Un objeto ggplot2 que representa la composición del portafolio.
#' @examples
#' pesos <- c(0.3, 0.5, 0.2)
#' nombres_activos <- c("Acción A", "Acción B", "Acción C")
#' composicion_portafolio(pesos, nombres_activos)
