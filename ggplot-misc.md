library(tidyverse)
mpg_gg <- ggplot(mpg)
mpg_gg + geom_point(aes(x = hwy, y = cty, colour = cyl))
