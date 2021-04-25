
# build the request string - ref dataset 'cg_api_paths'

cg_internal_buildRequestUrl <- function(specific_path){
    base_url <- cg_api_paths$base[1]
    request_url <- paste0(base_url, specific_path)
    return(request_url)
}
