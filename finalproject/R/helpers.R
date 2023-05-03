getWinningParty = function(party, voteShare){
  pos<-which.max(voteShare)
  return(party[[pos]])
}
#' change data frame column of mayor data
#'
#' @param df the data frame that needs to do column rename
#'
#' @return a data frame
#' @export
#'
#' @examples
correctDFColumnNames = function(df) {
  df[3, ] |> 
    as.character() -> characterValues
  # characterValues 
  grep("率", characterValues) -> pos
  # pos
  # c(1, pos)
  df[, c(1, pos)] -> dataFrameChosenColumns
  df[2,] |> as.character() |>
    na.omit() -> columnNamesWeWant
  columnNamesWeWant[-2] -> columnNamesWeWant
  names(dataFrameChosenColumns) <- columnNamesWeWant
  dataFrameChosenColumns[- c(1,2,3) ,]  -> dataFrameChosenColumns
  return(dataFrameChosenColumns)
}