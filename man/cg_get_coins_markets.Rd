% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cg_get_coins_markets.R
\name{cg_get_coins_markets}
\alias{cg_get_coins_markets}
\title{Get coins markets}
\usage{
cg_get_coins_markets(
  vs_currency = "usd",
  ids = NULL,
  category = NULL,
  order = "market_cap_desc",
  per_page = 10,
  page = 1,
  sparkline = TRUE,
  price_change_percentage = NULL
)
}
\arguments{
\item{vs_currency}{\code{string} The target currency of market data (usd,
eur, jpy, etc.).}

\item{ids}{\code{string} The ids of the coin, comma separated crytocurrency
symbols (base).}

\item{category}{\code{string} Filter by coin category, only
"decentralized_finance_defi" and "stablecoins" are supported at the
moment.}

\item{order}{\code{string} Valid values: market_cap_desc, market_cap_asc,
gecko_desc, gecko_asc, volume_desc, volume_asc, id_desc, id_asc.}

\item{per_page}{\code{integer} Valid values: 1 - 250.}

\item{page}{\code{integer} Page through results.}

\item{sparkline}{\code{boolean} Include sparkline 7 days data. Valid values:
true, false.}

\item{price_change_percentage}{\code{string} Include price change percentage
in 1h, 24h, 7d, 14d, 30d, 200d, or 1y; comma-separated e.g. "1h,24h,7d".}
}
\value{
Returns a "data.frame".
}
\description{
List all supported coins price, market cap, volume, and market related data.
Use this to obtain all the coins market data (price, market cap, volume).
}
\section{Reference}{
 See
\code{/coins/markets}
in the
\href{https://www.coingecko.com/api/documentations/v3}{API documentation}.
}

\examples{
cg_get_coins_markets()
cg_get_coins_markets(order = "volume_desc", per_page = 25)

}
