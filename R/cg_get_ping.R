#' Check API server status
#'
#' Get CoinGecko API server status.
#'
#' @section Reference: See
#'     \code{/ping}
#'     in the
#'     [API documentation](https://www.coingecko.com/api/documentations/v3).
#'
#' @return A "list"
#'
#' @export
#'
#' @examples
#' cg_get_ping()
#'
cg_get_ping <- function() {

    # build the request string - ref internal dataset 'cg_api_paths'
    specific_path <- cg_api_paths$ping[1]
    request_url <- cg_internal_buildRequestUrl(specific_path)

    # execute
    response <- httr::GET(request_url)
    parsed <- cg_internal_parseHttrResponse(response)
    parsed

}
