## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Diluted Earnings Per Share
#' @description Computes diluted earnings per share.
#' @param ni Net income.
#' @param pd Preferred dividends.
#' @param cpd Dividends on convertible preferred stock.
#' @param cdi Interest on convertible debt.
#' @param tax Tax rate.
#' @param w Weighted average number of common shares outstanding.
#' @param cps Shares from conversion of convertible preferred stock.
#' @param cds Shares from conversion of convertible debt.
#' @param iss Shares issuable from stock options.
#' @return Diluted earnings per share.
#' @examples
#' # Example usage:
#' diluted.EPS(ni = 115600, pd = 10000, cdi = 42000, tax = 0.4, w = 200000, cds = 60000)
#' diluted.EPS(ni = 115600, pd = 10000, cpd = 10000, w = 200000, cps = 40000)
#' diluted.EPS(ni = 115600, pd = 10000, w = 200000, iss = 2500)
# diluted.EPS(ni = 115600, pd = 10000, cpd = 10000, cdi = 42000, tax = 0.4, w = 200000, cps = 40000, cds = 60000, iss = 2500)
#' @export

diluted.EPS <- function(ni, pd, cpd = 0, cdi = 0, tax = 0, w, cps = 0, cds = 0, iss = 0) {
  adjusted_ni <- ni - pd + (cdi * (1 - tax)) + cpd
  adjusted_w <- w + cps + cds + iss
  adjusted_ni / adjusted_w
}

# Explicación en español:
# Esta función `diluted.EPS` calcula las ganancias diluidas por acción.
#
# Parámetros:
# - `ni`: Ingreso neto.
# - `pd`: Dividendos preferentes.
# - `cpd`: Dividendos de acciones preferentes convertibles.
# - `cdi`: Intereses de deuda convertible.
# - `tax`: Tasa de impuestos.
# - `w`: Número promedio ponderado de acciones comunes en circulación.
# - `cps`: Acciones de la conversión de acciones preferentes convertibles.
# - `cds`: Acciones de la conversión de deuda convertible.
# - `iss`: Acciones emitibles de opciones sobre acciones.
#
# Ejemplos Aplicados:
# 1. Calcular las ganancias diluidas por acción con un ingreso neto de $115600, dividendos preferentes de $10000, intereses de deuda convertible de $42000, tasa de impuestos de 0.4, número promedio ponderado de acciones comunes de 200000, y 60000 acciones de la conversión de deuda convertible.
#    diluted.EPS(ni = 115600, pd = 10000, cdi = 42000, tax = 0.4, w = 200000, cds = 60000)
# 2. Calcular las ganancias diluidas por acción con un ingreso neto de $115600, dividendos preferentes de $10000, dividendos de acciones preferentes convertibles de $10000, número promedio ponderado de acciones comunes de 200000, y 40000 acciones de la conversión de acciones preferentes convertibles.
#    diluted.EPS(ni = 115600, pd = 10000, cpd = 10000, w = 200000, cps = 40000)
# 3. Calcular las ganancias diluidas por acción con un ingreso neto de $115600, dividendos preferentes de $10000, número promedio ponderado de acciones comunes de 200000, y 2500 acciones emitibles de opciones sobre acciones.
#    diluted.EPS(ni = 115600, pd = 10000, w = 200000, iss = 2500)
# 4. Calcular las ganancias diluidas por acción con un ingreso neto de $115600, dividendos preferentes de $10000, dividendos de acciones preferentes convertibles de $10000, intereses de deuda convertible de $42000, tasa de impuestos de 0.4, número promedio ponderado de acciones comunes de 200000, 40000 acciones de la conversión de acciones preferentes convertibles, 60000 acciones de la conversión de deuda convertible, y 2500 acciones emitibles de opciones sobre acciones.
#    diluted.EPS(ni = 115600, pd = 10000, cpd = 10000, cdi = 42000, tax = 0.4, w = 200000, cps = 40000, cds = 60000, iss = 2500)
