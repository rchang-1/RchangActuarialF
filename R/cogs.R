## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Cost of Goods Sold and Ending Inventory
#' @description Computes the cost of goods sold and ending inventory under three methods: FIFO, LIFO, Weighted average.
#' @param uinv Units of beginning inventory.
#' @param pinv Price of beginning inventory.
#' @param units nx1 vector of inventory units purchased ordered by time (from first to last).
#' @param price nx1 vector of inventory price. Same order as units.
#' @param sinv Units of sold inventory.
#' @param method Inventory methods: FIFO (first in first out), LIFO (last in first out), WAC (weighted average cost).
#' @return A list containing the cost of goods sold and the ending inventory value.
#' @examples
#' # Example usage:
# cogs(uinv = 2, pinv = 2, units = c(3, 5), price = c(3, 5), sinv = 7, method = "FIFO")
# cogs(uinv = 2, pinv = 2, units = c(3, 5), price = c(3, 5), sinv = 7, method = "LIFO")
# cogs(uinv = 2, pinv = 2, units = c(3, 5), price = c(3, 5), sinv = 7, method = "WAC")
#' @export

cogs <- function(uinv, pinv, units, price, sinv, method = "FIFO") {
  total_units <- c(uinv, units)
  total_price <- c(pinv, price)

  if (method == "FIFO") {
    sold_price <- sum(head(total_price, sinv))
    ending_inventory <- sum(tail(total_price, length(total_units) - sinv))
  } else if (method == "LIFO") {
    sold_price <- sum(tail(total_price, sinv))
    ending_inventory <- sum(head(total_price, length(total_units) - sinv))
  } else if (method == "WAC") {
    avg_cost <- sum(total_price) / sum(total_units)
    sold_price <- avg_cost * sinv
    ending_inventory <- avg_cost * (sum(total_units) - sinv)
  } else {
    stop("Invalid method. Use 'FIFO', 'LIFO', or 'WAC'.")
  }

  list(cogs = sold_price, ending_inventory = ending_inventory)
}

# Explicación en español:
# Esta función `cogs` calcula el costo de los bienes vendidos y el valor del inventario final bajo tres métodos: FIFO, LIFO y promedio ponderado.
#
# Parámetros:
# - `uinv`: Unidades de inventario inicial.
# - `pinv`: Precio del inventario inicial.
# - `units`: Vector nx1 de unidades de inventario compradas ordenadas por tiempo (de primero a último).
# - `price`: Vector nx1 de precios de inventario. Mismo orden que `units`.
# - `sinv`: Unidades de inventario vendidas.
# - `method`: Métodos de inventario: FIFO (primero en entrar, primero en salir), LIFO (último en entrar, primero en salir), WAC (costo promedio ponderado).
#
# Ejemplos Aplicados:
# 1. Calcular el COGS y el inventario final usando FIFO.
#    cogs(uinv = 2, pinv = 2, units = c(3, 5), price = c(3, 5), sinv = 7, method = "FIFO")
# 2. Calcular el COGS y el inventario final usando LIFO.
#    cogs(uinv = 2, pinv = 2, units = c(3, 5), price = c(3, 5), sinv = 7, method = "LIFO")
# 3. Calcular el COGS y el inventario final usando promedio ponderado.
#    cogs(uinv = 2, pinv = 2, units = c(3, 5), price = c(3, 5), sinv = 7, method = "WAC")
