#' List cryptocurrency data
#'
#' Get global cryptocurrency data
#'
#' @section Reference: See
#'     \code{/global}
#'     in the
#'     [API documentation](https://www.coingecko.com/api/documentations/v3).
#'
#' @return Returns a "list".
#'
#' @export
#'
#' @examples
#' cg_get_global()
#'
cg_get_global <- function() {

    # build the request string - ref internal dataset 'cg_api_paths'
    specific_path <- cg_api_paths$global[1]
    request_url <- cg_internal_buildRequestUrl(specific_path)

    # execute
    response <- httr::GET(request_url)
    parsed <- cg_internal_parseHttrResponse(response)
    parsed

}
