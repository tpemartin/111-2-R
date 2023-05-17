
# GitHub Copilot    

## setup

In VsCode, install the GitHub Copilot extension.

## Github Education Account

Sign up for a GitHub Education account.

  1. Go to [https://education.github.com/](https://education.github.com/)
  2. Login your github account.
  3. Under your avator pull down menu, click on the "your benefits" button.

# For loops

  * <https://github.com/tpemartin/111-2-R-final-project/blob/main/traffic.R>

```r
# i =1
{
  finalProject[[x]] <-
    read.csv("/Users/martin/Documents/GitHub/111-2-R-final-project/111年傷亡道路交通事故資料/x")
}
# i =2
{
  finalProject[[x]] <-
   read.csv("/Users/martin/Documents/GitHub/111-2-R-final-project/111年傷亡道路交通事故資料/x")
}
# i =3
{
  finalProject[[x]] <-
    read.csv("/Users/martin/Documents/GitHub/111-2-R-final-project/111年傷亡道路交通事故資料/x")
}
```

```r
for(x in c("111年度A1交通事故資料.csv","111年度A2交通事故資料_1.csv", "111年度A2交通事故資料_10.csv"))
{
  finalProject[[x]] <-
    read.csv(paste0("/Users/martin/Documents/GitHub/111-2-R-final-project/111年傷亡道路交通事故資料/",x))
}
```

```r
filenames <- c("111年度A1交通事故資料.csv","111年度A2交通事故資料_1.csv", "111年度A2交通事故資料_10.csv")
for(x in finalnames)
{
  finalProject[[x]] <-
    read.csv(glue::glue("/Users/martin/Documents/GitHub/111-2-R-final-project/111年傷亡道路交通事故資料/{x}"))
}

```

Take those changing elements and put in one collection

```r
filenames <- c("111年度A1交通事故資料.csv","111年度A2交通事故資料_1.csv", "111年度A2交通事故資料_10.csv")

for(x in filenames)
{
    read.csv(paste0("/Users/martin/Documents/GitHub/111-2-R-final-project/111年傷亡道路交通事故資料/", x))
}
```

```r

{
  "data1"
}
{
  "data2"
}
{
  "data3"
}
```

```r
xSet <- c("1", "2", "3")
for(x in xSet)
{
  paste0("data",x)
}

```