## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Equivalent/proportional Interest Rates
#' @description An interest rate to be applied n times per year can be converted to an equivalent rate to be applied p times per year.
#'
#' @param r Interest rate to be applied n times per year (r is annual rate!).
#' @param n Times that the interest rate r is compounded per year.
#' @param p Times that the equivalent rate is compounded per year.
#' @param type Equivalent interest rates ('e', default) or proportional interest rates ('p').
#'
#' @return Equivalent or proportional interest rate.
#'
#' @examples
#' # Example usage:
#' EIR(r=0.05, n=1, p=12)
#' EIR(r=0.05, n=2, p=12)
#' EIR(r=0.05, n=4, p=12)
#' EIR(r=0.05, n=12, p=1)
#' EIR(r=0.05, n=1, p=4)
# EIR(r=0.05, n=12, p=4)
# EIR(r=0.05, p=12, type='p')
#'
#' @seealso ear
#'
#' @export
EIR <- function(r, n = 1, p = 12, type = c("e", "p")) {
  type <- match.arg(type)
  if (type == "e") {
    eq_rate <- (1 + r/n)^(n/p) - 1
  } else {
    eq_rate <- r * p/n
  }
  return(eq_rate)
}
# Explicación en español:
# Esta función `EIR` convierte una tasa de interés aplicada n veces por año a una tasa equivalente aplicada p veces por año.
#
# Parámetros:
# - `r`: Tasa de interés aplicada n veces por año (r es tasa anual).
# - `n`: Veces que la tasa de interés r se capitaliza por año.
# - `p`: Veces que la tasa equivalente se capitaliza por año.
# - `type`: Tasas de interés equivalentes ('e', predeterminado) o tasas de interés proporcionales ('p').
#
# Retorno:
# Tasa de interés equivalente o proporcional.
#
# Ejemplos:
# 1. Tasa de interés mensual equivalente a 5% capitalizado anualmente:
#    EIR(r=0.05, n=1, p=12)
# 2. Tasa de interés mensual equivalente a 5% capitalizado semestralmente:
#    EIR(r=0.05, n=2, p=12)
# 3. Tasa de interés mensual equivalente a 5% capitalizado trimestralmente:
#    EIR(r=0.05, n=4, p=12)
# 4. Tasa de interés anual equivalente a 5% capitalizado mensualmente:
#    EIR(r=0.05, n=12, p=1)
# 5. Tasa de interés trimestral equivalente a 5% capitalizado anualmente:
#    EIR(r=0.05, n=1, p=4)
# 6. Tasa de interés trimestral equivalente a 5% capitalizado mensualmente:
#    EIR(r=0.05, n=12, p=4)
# 7. Tasa de interés mensual proporcional equivalente a una tasa anual simple de 5%:
#    EIR(r=0.05, p=12, type='p')
