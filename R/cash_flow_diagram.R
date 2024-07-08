## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
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
#' @import ggplot2
#' @export
cash_flow_diagram_ggplot2 <- function(cash_flows, periods) {
  library(ggplot2)

  # Crear dataframe para ggplot2
  df <- data.frame(
    Period = periods,
    CashFlow = cash_flows
  )

  # Colorear barras según el flujo de efectivo positivo o negativo
  df$Color <- ifelse(df$CashFlow >= 0, "Positive", "Negative")

  # Crear el gráfico con ggplot2
  p <- ggplot(df, aes(x = Period, y = CashFlow, fill = Color)) +
    geom_bar(stat = "identity") +
    labs(title = "Cash Flow Diagram",
         x = "Period",
         y = "Cash Flow") +
    geom_hline(yintercept = 0, linetype = "dashed", color = "black") +
    theme_minimal()

  # Imprimir el gráfico
  print(p)

  # Retornar el objeto ggplot para ser mostrado o guardado
  return(p)
}
