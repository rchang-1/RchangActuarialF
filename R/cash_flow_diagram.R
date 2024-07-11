## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Plot Cash Flow Diagram using ggplot2
#'
#' This function plots an interactive cash flow diagram given a series of cash flows and periods.
#'
#' @param cash_flows A numeric vector of cash flows.
#' @param periods A numeric vector of periods corresponding to the cash flows.
#'
#' @return A ggplot object representing the cash flow diagram.
#'
#' @examples
# cash_flows <- c(-1000, 200, 300, 400, 800)
# periods <- 0:4
# cash_flow_diagram_ggplot2(cash_flows, periods)
#'
#' @import ggplot2
#' @export
# Plot Cash Flow Diagram using ggplot2
cash_flow_diagram_ggplot2 <- function(cash_flows, periods) {
  library(ggplot2)

  # Create dataframe for ggplot2
  df <- data.frame(
    Period = periods,
    CashFlow = cash_flows
  )

  # Color bars based on positive or negative cash flow
  df$Color <- ifelse(df$CashFlow >= 0, "Positive", "Negative")

  # Create the plot using ggplot2
  p <- ggplot(df, aes(x = Period, y = CashFlow, fill = Color)) +
    geom_bar(stat = "identity") +
    labs(title = "Cash Flow Diagram",
         x = "Period",
         y = "Cash Flow") +
    geom_hline(yintercept = 0, linetype = "dashed", color = "black") +
    theme_minimal()

  # Print the plot
  print(p)
}

# Explicación en español:
# Esta función `cash_flow_diagram_ggplot2` crea un diagrama de flujo de efectivo interactivo utilizando ggplot2,
# dado un vector de flujos de efectivo y periodos correspondientes.
#
# Parámetros:
# - `cash_flows`: Vector numérico de flujos de efectivo.
# - `periods`: Vector numérico de periodos correspondientes a cada flujo de efectivo.
#
# Salida:
# - Un objeto ggplot que representa el diagrama de flujo de efectivo.
#
# Ejemplos Aplicados:
# 1. Crear un diagrama de flujo de efectivo para flujos de efectivo de -1000, 200, 300, 400 y 800 en periodos 0 a 4.
#    cash_flows <- c(-1000, 200, 300, 400, 800)
#    periods <- 0:4
#    cash_flow_diagram_ggplot2(cash_flows, periods)
