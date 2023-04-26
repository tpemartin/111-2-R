library(readxl)
exchangeRateData <- read_excel("日資料 (2002年迄今).xls",
                               skip = 5)

dplyr::glimpse(
  exchangeRateData
)

# NTD/USD to USD/NTD
1/exchangeRateData$新台幣

dplyr::glimpse(
  exchangeRateData
)
#
as.numeric(exchangeRateData$新台幣) -> exchangeRateData$新台幣
1/exchangeRateData$新台幣


names(exchangeRateData)

class(exchangeRateData$日期)
class(exchangeRateData$新台幣)
1/exchangeRateData$新台幣
as.numeric(exchangeRateData$新台幣) -> exchangeRateData$新台幣



class(exchangeRateData$新台幣)


1/exchangeRateData$新台幣

### Create an atomic vector
monthlyData = c("2001-01", "2002-2")
## paste
paste("a","b",sep="-") # click F1 to quickly see help

# pipe
monthlyData |>
  paste(
    "1"
  ) |>
  lubridate::ymd() -> monthlyData


monthlyData = paste(monthlyData, "1")

lubridate::ymd(monthlyData) -> monthlyData

class(monthlyData)
