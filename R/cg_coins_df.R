#' Build a custom data frame of coins
#'
#' A wrapper for \code{cg_get_coins_markets(...)} which is limited to 250
#' symbols per page. This function allows a custom data frame to be build by
#' progressively binding data frames given the function's parameters.
#'
#' The \code{cg_get_coins_markets(...)} function is by default ordered according
#' to market cap and in descending order.
#'
#' @param per_page \code{integer} Symbols per page; from 1 - 250.
#' @param pages \code{integer} Number of pages to return.
#'
#' @section Reference: See
#'     \code{\link{cg_get_coins_markets}}
#'
#' @return Returns a "data.frame".
#'
#' @export
#'
#' @examples
#' cg_coins_df(per_page = 250, pages = 4)
#'
cg_coins_df <- function(per_page, pages) {

    df <- data.frame()
    for (i in 1:pages) {
        tmp <- cg_get_coins_markets(per_page = per_page,
                                    page = i)
        df <- dplyr::bind_rows(df,tmp)
    }
    return(df)

}
