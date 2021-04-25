#' CryptoR: an interface to the CoinGecko cryptocurrency API.
#'
#' The CryptoR package provides 3 API and 1 wrapper functions.
#'
#' @section API functions:
#' cg_get_ping(). Get CoinGecko API server status.
#'
#' cg_get_global(). Get global cryptocurrency data.
#'
#' cg_get_coins_markets(...). Get all supported coins price, market cap,
#' volume, and market related data.
#'
#' @section User functions:
#' cg_coins_df(...). Helper for \code{cg_get_coins_markets(...)}. Builds a
#' custom size data frame given that \code{cg_get_coins_markets(...)} is
#' limited to returning 250 symbols.
#'
#' @seealso \code{\link{cg_get_ping}}, \code{\link{cg_get_global}},
#' \code{\link{cg_get_coins_markets}}, \code{\link{cg_coins_df}}
#'
#' @docType package
#' @name CryptoR
NULL
#> NULL
