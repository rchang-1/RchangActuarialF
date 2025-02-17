% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cogs.R
\name{cogs}
\alias{cogs}
\title{Cost of Goods Sold and Ending Inventory}
\usage{
cogs(uinv, pinv, units, price, sinv, method = "FIFO")
}
\arguments{
\item{uinv}{Units of beginning inventory.}

\item{pinv}{Price of beginning inventory.}

\item{units}{nx1 vector of inventory units purchased ordered by time (from first to last).}

\item{price}{nx1 vector of inventory price. Same order as units.}

\item{sinv}{Units of sold inventory.}

\item{method}{Inventory methods: FIFO (first in first out), LIFO (last in first out), WAC (weighted average cost).}
}
\value{
A list containing the cost of goods sold and the ending inventory value.
}
\description{
Computes the cost of goods sold and ending inventory under three methods: FIFO, LIFO, Weighted average.
}
\details{
Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
}
\examples{
# Example usage:
}
