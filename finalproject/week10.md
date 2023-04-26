
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
  share = c(0.8, 0.1, 0.1, 0.2, 0.45, 0.35),
  party = c("a", "b", "c", "a", "b", "c"),
  city = c("A","A","A", "B", "B", "B")
)
dfExample
```

```{r}
dfExample$share |>
  which.max() -> pos
dfExample$party[[pos]]
```


```{r}
dfExample |>
  group_by(city) |>
  summarise(
   winningParty = {
      share |>
        which.max() -> pos
      party[[pos]]
    }
  )
```

# Two commons df formats


```{r}
# long format
dfExample = data.frame(
  share = c(0.8, 0.1, 0.1, 0.2, 0.45, 0.35),
  party = c("a", "b", "c", "a", "b", "c"),
  city = c("A","A","A", "B", "B", "B")
)
dfExample
```

```{r}
# wide format
data.frame(
  city = c("A","B"),
  a = c(0.8, 0.2),
  b = c(0.1, 0.45),
  c = c(0.1, 0.35)
)
```

