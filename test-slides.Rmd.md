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


```r
roll <- function(bones = 1:6, rolls = 2) {
  dice <-sample(bones, size = rolls)
  dice
}
roll()
```

```
[1] 5 6
```
- How can we change the number of dice sides? The number of rolls?
- Roll the dice a few times. Can you spot anything weird?

Fixing our Dice
========================================================
incremental: true


```r
roll <- function(bones = 1:6, rolls = 2) {
  dice <- sample(bones, size = rolls, replace = TRUE)
  dice
}
roll()
```

```
[1] 6 5
```

Let's make the function do the adding
========================================================

```r
roll <- function(bones = 1:6, rolls = 2) {
  dice <- sample(bones, size = rolls, replace = TRUE)
  sum(dice)
}
roll()
```

```
[1] 5
```

Let's make graphs!
========================================================

What are packages?
========================================================

```r
install.packages("tidyverse")
library(tidyverse)
```

Quick and Dirty Plotting
========================================================



```r
qplot(c(1,2,2,2,4,4,4,5,5,7,10))
```

![plot of chunk unnamed-chunk-9](test-slides.Rmd-figure/unnamed-chunk-9-1.png)

Rolling many times
========================================================
incremental: true


```r
replicate(10, roll())
```

```
 [1] 4 4 6 7 8 4 6 5 7 6
```
- What happens if we change the first variable? 
- Can we adjust the parameters of roll()?

Plotting dice rolls
========================================================
incremental: true


```r
rolls <- replicate(10000, roll())
```

Plotting dice rolls 2
========================================================


```r
qplot(rolls, binwidth=1)
```

Plotting dice rolls 3
========================================================
![plot of chunk unnamed-chunk-13](test-slides.Rmd-figure/unnamed-chunk-13-1.png)
