## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Present Value (PV) of a Perpetuity Function
#' @description Calculates the Present Value (PV) of a perpetuity.
#'
#' This function calculates the Present Value (PV) of a perpetuity given a discount rate and payment amount per period.
#'
#' @param rate The discount rate.
#' @param pmt The payment amount per period.
#' @return The Present Value.
#'
#' @examples
#' # Example usage:
#' perpetuity_pv(0.05, 100)

#' @export
perpetuity_pv <- function(rate, pmt) {
  pmt / rate
}

#' Función para calcular el Valor Presente (PV) de una perpetuidad
#'#' Calcula el Valor Presente (PV) de una perpetuidad dado una tasa de descuento y el monto del pago por periodo.
#'
#' @param rate La tasa de descuento.
#' @param pmt El monto del pago por periodo.
#' @return El Valor Presente.
#'
#' @examples
#' # Ejemplo de uso:
# perpetuity_pv(0.05, 100)
