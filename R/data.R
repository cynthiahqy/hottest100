#' Triple J Hottest 100 Track Data
#'
#' A dataset containing track-level data from the Triple J Hottest 100, scraped on 19 Nov, 2025 from the official Triple J archive.
#'
#' @format A data.frame with one row per track, including variables such as:
#' \describe{
#'   \item{alltime}{Logical; indicates if the entry is from an all-time chart or specific year.}
#'   \item{artist}{Character; name of the artist or band associated with the track.}
#'   \item{country}{Character; the country associated with the track/chart.}
#'   \item{id}{Unique identifier for each track (within year)}
#'   \item{pollyear}{Countdown poll year}
#'   \item{position}{Chart position of the track.}
#'   \item{releaseyear}{Original release year of the track.}
#'   \item{track}{Title of the track or song.}
#' }
#' }
#' @source \url{https://www.abc.net.au/triplej/hottest100/archive/search/}
"hottest100_tracks"

#' Triple J Hottest 100 Album Data
#'
#' A dataset containing album information associated with tracks from the Triple J Hottest 100, scraped on 19 Nov, 2025 from the official Triple J archive.
#'
#' @format A data.frame with one row per album, including variables such as:
#' @describe{}
#'   \item{year}{The year the Hottest 100 was held.}
#'   \item{alltime}{Logical; whether the ranking is considered for an "All-Time" list.}
#'   \item{alltimedescription}{A description of the all-time list, if applicable.}
#'   \item{colorRGB}{Primary RGB color value associated with the album or year in character format.}
#'   \item{contrastColorRGB}{Contrasting RGB color value (in character format) suitable for text overlay.}
#' }
#' @source \url{https://www.abc.net.au/triplej/hottest100/archive/search/}
"hottest100_albums"

#' Triple J Hottest 100 Artists
#'
#' A deduplicated dataset of artists represented in the Triple J Hottest 100, created from \code{hottest100_tracks}.
#' 
#' @format A data.frame with one row per artist, including variables:
#' \describe{
#'   \item{artist}{Artist name}
#'   \item{country}{Country of origin}
#'   \item{releaseyear}{Release year of included track}
#' }
#' @source Derived from \code{hottest100_tracks}
"hottest100_artists"