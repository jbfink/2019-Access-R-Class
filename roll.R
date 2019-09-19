function(bones = 1:6, rolls = 3) {
   dice <- sample(bones, size = rolls, replace = TRUE)
   sum(dice)
}
