who_is_the_hottest <- function(year, special = NULL){

  if(is.null(special)){

    countdown_winner = hottest100_tracks |>
      filter(pollyear == year & position == 1 & alltime == FALSE)

    glue("In {year}, {countdown_winner$artist} was the hottest!") |> print()

  }else{

    countdown_winner = hottest100_tracks |>
      filter(pollyear == year & position == 1 & alltime == TRUE)

    glue("For the special countdown in {year} - {countdown_winner$artist} was the hottest!") |> print()

  }

  return(countdown_winner)

}
