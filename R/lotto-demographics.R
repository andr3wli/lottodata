#'  Demographics information about lottery gambling behavior in different regions in Ontario, Canada
#'
#' This data set contains demographic information about lottery gambling behavior
#' in Ontario Canada. Regions are separated by zip codes (first 3 digits). Column
#' names have been renamed to something that makes sense and lower case. As well,
#' a duplicated column has been removed. The original data was provided via an
#' Access to Information Act Request. It is now hosted on Open Science Framework.
#'
#' @source <https://osf.io/utxjf/download/>, downloaded 2020-12-12
#'
#' @format A .csv data frame with the following variables:
#' \describe{
#'   \item{zip_code}{Originally called FSA (forward sortation area). FSA's are
#'   geographical regions defined by the first three digits of postal code
#'   (e.g. M1C)}
#'   \item{geo_id}{Geography ID}
#'   \item{income}{Per capita income levels}
#'   \item{education}{Highest completed level of education for the population}
#'   \item{mbsa}{Proportion of time spent in white collar employment. White
#'   collar employment is defined as the proportion of residents aged 15 or greater
#'   employed in management, business finance and administration, health, education,
#'   law, social community and government services, art, culture, natural and applied
#'   sciences and related occupations, according to the National Occupational Classification}
#'   \item{ses}{SES was calculated via takling the sum of the Z-scores of it's per-
#'   capita income, years of education, and proportion of white-collar workers}
#'   \item{description}{A string input of where the neighbourhood is}
#' }
#'

"lotto_demographics"
