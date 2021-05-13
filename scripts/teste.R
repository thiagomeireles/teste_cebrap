#install.packages("readr")
#install.packages("here")

library(datasets)
library(readr)
library(here)

df <- mtcars

df$car_name <- rownames(df)

write_csv2(x = df, file = here('dados', 'mtcars.csv'))

df2 <- read_csv2(here('dados', 'mtcars.csv'))

df3 <- read_delim(here('dados', 'mtcars.csv'), delim = ";")
