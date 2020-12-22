#'  Jackpot size and net sales in different regions in Ontario, Canada
#'
#' This data set contains information about the jackpot size (cad dollar) and
#' net sales and ticket sales. Sales are separated by zip code (first 3 digits)
#' and lotto game. I changed the column name so that they are more informative
#' in lower case. As well, I created new year, month, and day columns via the
#' \code{lubridate} package. The original data was provided via an
#' Access to Information Act Request. It is now hosted on Open Science Framework.
#'
#' @source <https://osf.io/6qcde/download>, downloaded 2020-12-12
#'
#' @format A .csv data frame with the following variables:
#' \describe{
#'   \item{zip_code}{Originally called FSA (forward sortation area). FSA's are
#'   geographical regions defined by the first three digits of postal code
#'   (e.g. M1C)}
#'   \item{start_date}{The start of the sales date, year-month-day format}
#'   \item{end_date}{The end of the sales date, year-month-day format}
#'   \item{game}{The specific lotto game. One of \code{Lottario}, \code{Lotto 649},
#'   \code{Lotto 669}.}
#'   \item{ticket_sales}{Number of ticket sold}
#'   \item{net_sales}{The total cad dollar amount of sales generated}
#'   \item{jackpot_size}{How large the jackpot size is in cad dollar}
#'   \item{year}{Year}
#'   \item{month}{Month}
#'   \item{day}{Day}
#' }
#'
#' @examples
#'
#' library(dplyr)
#'
#' # What is the yearly spending for the Lottario in zone M1B in 2012?
#'
#' jackpot_size %>%
#'   filter(year == 2012 & game == "Lottario" & zip_code == "M1B")
#'
"jackpot_size"
