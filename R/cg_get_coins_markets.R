#' Get coins markets
#'
#' List all supported coins price, market cap, volume, and market related data.
#'     Use this to obtain all the coins market data (price, market cap, volume).
#'
#' @param vs_currency \code{string} The target currency of market data (usd,
#'     eur, jpy, etc.).
#' @param ids \code{string} The ids of the coin, comma separated crytocurrency
#'     symbols (base).
#' @param category \code{string} Filter by coin category, only
#'     "decentralized_finance_defi" and "stablecoins" are supported at the
#'     moment.
#' @param order \code{string} Valid values: market_cap_desc, market_cap_asc,
#'     gecko_desc, gecko_asc, volume_desc, volume_asc, id_desc, id_asc.
#' @param per_page \code{integer} Valid values: 1 - 250.
#' @param page \code{integer} Page through results.
#' @param sparkline \code{boolean} Include sparkline 7 days data. Valid values:
#'     true, false.
#' @param price_change_percentage \code{string} Include price change percentage
#'     in 1h, 24h, 7d, 14d, 30d, 200d, or 1y; comma-separated e.g. "1h,24h,7d".
#'
#' @section Reference: See
#'     \code{/coins/markets}
#'     in the
#'     [API documentation](https://www.coingecko.com/api/documentations/v3).
#'
#' @return Returns a "data.frame".
#'
#' @export
#'
#' @examples
#' cg_get_coins_markets()
#' cg_get_coins_markets(order = "volume_desc", per_page = 25)
#'
cg_get_coins_markets <- function(vs_currency = "usd",
                                 ids = NULL,
                                 category = NULL,
                                 order = "market_cap_desc",
                                 per_page = 10,
                                 page = 1,
                                 sparkline = TRUE,
                                 price_change_percentage = NULL
                                 ) {

    # build the request string - ref internal dataset 'cg_api_paths'
    specific_path <- cg_api_paths$coins[1]
    request_url <- cg_internal_buildRequestUrl(specific_path)

    # get response
    response <- httr::GET(request_url,
                    query = list(
                            vs_currency = vs_currency,
                            ids = ids,
                            category = category,
                            order = order,
                            per_page = per_page,
                            page = page,
                            sparkline = tolower(toString(sparkline)),
                            price_change_percentage = price_change_percentage
                            )
                        )
    parsed <- cg_internal_parseHttrResponse(response)
    parsed

}
