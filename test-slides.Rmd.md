test-slides.Rmd
========================================================
author: 
date: 
autosize: true

R Workshop
========================================================

WHO AM I
========================================================

WHO ARE YOU
========================================================

What Is R?
========================================================

Why R?
========================================================

Other software
========================================================
incremental: true

- Python
- Julia
- Tableau
- PowerBI etc

PYTHON IS BETTER (usually)
========================================================

RStudio
========================================================

Rstudio cloud
========================================================   
 https://rstudio.cloud

R ITSELF
========================================================
incremental: true


```r
1 + 2
```

```
[1] 3
```

R Packages
========================================================
```
install.packages("tidyverse")
```

Making Dice
========================================================
incremental: true


```r
dice <- c(1,2,3,4,5,6)
dice
```

```
[1] 1 2 3 4 5 6
```

```r
dice <- 1:6
dice
```

```
[1] 1 2 3 4 5 6
```

What are functions?
========================================================

Let's make a function!
========================================================
incremental: true


```r
hello <- function(name="Access Attendee") {
  paste("Hello, ", name, "!", sep="")
}
hello()
```

```
[1] "Hello, Access Attendee!"
```

- How can we run this and change the name?




Rolling the Dice
========================================================
incremental: true


