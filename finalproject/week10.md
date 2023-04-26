
# Function search path

  * Under **Environment** tab > **Global environment** dropdown menu

Search starts from **Global environment** and all the way down.

# dplyr::summarise

  * <https://dplyr.tidyverse.org/articles/grouping.html?q=summarise#summarise>
  
### dplyr::summarise

```{r}
library(dplyr)
starwars |>
  summarise(
   heightMaxPos  = which.max(height),
   heightMax = max(height, na.rm = T)
  )

dplyr::glimpse(starwars)
```
### dplyr::group_by

```{r}
starwars |>
  split(starwars$sex) -> starwarsSplit
starwarsSplit$female |>
  summarise(
   heightMaxPos  = which.max(height),
   heightMax = max(height, na.rm = T)
  )
starwarsSplit$hermaphroditic |>
  summarise(
   heightMaxPos  = which.max(height),
   heightMax = max(height, na.rm = T)
  )
```

Group data fram by its sex column values, and summarise...

```{r}
starwars |>
  dplyr::group_by(sex) |>
  summarise(
   heightMaxPos  = which.max(height),
   heightMax = max(height, na.rm = T)
  )
```
```{r}
dfExample = data.frame(
  share = c(0.8, 0.1, 0.1),
  party = c("a", "b", "c")
)
```
