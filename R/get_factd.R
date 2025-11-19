get_factd <- function(){

  num_facts = 6
  factd = sample(1:num_facts, 1)

  # Who has the most entries ever
  if(factd == 1){
    most_entries = hottest100_tracks |>
      group_by(artist) |>
      count() |>
      ungroup() |>
      filter(n == max(n))

    output_str = glue("{most_entries$artist} has the most entries ever in any countdown.
                      They have appeared {most_entries$n} times!")
  }

  # Who has the most entries in regular countdowns ever
  if(factd == 2){
    most_entries_reg = hottest100_tracks |>
      filter(alltime == FALSE) |>
      group_by(artist) |>
      count() |>
      ungroup() |>
      filter(n == max(n))

    output_str = glue("{most_entries_reg$artist} has the most entries ever in the hottest 100 yearly countdown.
                      They have appeared {most_entries_reg$n} times!")

  }

  # Who has the most entries in the top 10 ever
  if(factd == 3){

    most_entries_top10 = hottest100_tracks |>
      filter(position <= 10) |>
      group_by(artist) |>
      count() |>
      ungroup() |>
      filter(n == max(n))

    output_str = glue("{most_entries_top10$artist} has the most top 10 entries.
                      They have appeared {most_entries_top10$n} times across all countdowns!")

  }

  # Who has the most entries in the top 10 regular countdowns ever
  if(factd == 4){

    most_entries_top10_reg = hottest100_tracks |>
      filter(position <= 10 & alltime == FALSE) |>
      group_by(artist) |>
      count() |>
      ungroup() |>
      filter(n == max(n))

    output_str = glue("{most_entries_top10_reg$artist} has the most top 10 entries in the yearly countdowns.
                      They have appeared {most_entries_top10_reg$n} times!")

  }

  # Who has appeared in the most number of countdowns
  if(factd == 5){
    num_countdowns = hottest100_tracks |>
      group_by(artist, pollyear, alltime) |>
      count() |>
      ungroup() |>
      filter(n == max(n))

    output_str = glue("{num_countdowns$artist} has appeared in largest number of past countdowns.
                      They have made appearances in {num_countdowns$n} different countdowns!")

  }

  # Who has appeared in the most number of reg countdowns
  if(factd == 6){

    num_countdowns_reg = hottest100_tracks |>
      filter(alltime == FALSE) |>
      group_by(artist, pollyear) |>
      count() |>
      ungroup() |>
      filter(n == max(n))

    output_str = glue("{num_countdowns_reg$artist} has appeared in {num_countdowns_reg$n} yearly countdowns.") |>
      glue_collapse() |> paste("That's higher than any other artist")

  }

  print(output_str)

}
