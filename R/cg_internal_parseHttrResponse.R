
# parse HTTR response

cg_internal_parseHttrResponse <- function(response){
    httr::warn_for_status(response)
    parsed <- jsonlite::fromJSON((rawToChar(response$content)))
    return(parsed)
}
