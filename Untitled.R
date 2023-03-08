c("蔥抓","蔥抓A","蔥抓B") |>
  stringr::str_detect("蔥抓") |>
  print()

c("北一女","台北市立第一女子高級中學","臺北市立第一女子高級中學") |>
  stringr::str_detect("[台臺]?北市?立?第?一女?子?高?級?中?學?")

# Regex
