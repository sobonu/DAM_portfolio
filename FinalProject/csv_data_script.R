## Packages
library(tidyverse)


## Script: 1800-1913 all genders

df_ages_years_all <- read_csv("data/finalproject1800-1913-all.csv")

# Editing names
df_ages_years_all <- df_ages_years_all %>% rename(year = key)

# Removing years before 1800:
df_ages_years_all <- subset(df_ages_years_all, year >= 1800)

# Creating age-groups: 
df_ages_years_all <- df_ages_years_all %>%
  mutate(age_group_1_21 = `1` + `2` + `3` + `4` + `5` + `6` + `7` + `8` + `9` + `10` + `11` + `12` + `13` + `14` + `15` + `16` + `17` + `18` + `19` + `20` + `21`) %>% 
  mutate(age_group_22_30 = `22` + `23` + `24` + `25` + `26` + `27` + `28` + `29` + `30`) %>% 
  mutate(age_group_31_50 =  `31` + `32` + `33` + `34` + `35` + `36` + `37` + `38` + `39` + `40` + `41` + `42` + `43` + `44` + `45` + `46` + `48` + `49` + `50`) %>% 
  mutate(age_group_51_99 = rowSums(df_ages_years_all[, 53:101]))

df_ages_years_all <- df_ages_years_all[, c("year", "doc_count", "age_group_1_21", "age_group_22_30", "age_group_31_50", "age_group_51_99")]


## Script: 1800-1913 men

df_men <- read_csv("data/finalproject1800-1913-men.csv")

df_men <- df_men %>% rename(year = key)

df_men <- subset(df_men, year >= 1800)

df_men <- df_men %>%
  mutate(age_group_1_21 = `1` + `2` + `3` + `4` + `5` + `6` + `7` + `8` + `9` + `10` + `11` + `12` + `13` + `14` + `15` + `16` + `17` + `18` + `19` + `20` + `21`) %>% 
  mutate(age_group_22_30 = `22` + `23` + `24` + `25` + `26` + `27` + `28` + `29` + `30`) %>% 
  mutate(age_group_31_50 =  `31` + `32` + `33` + `34` + `35` + `36` + `37` + `38` + `39` + `40` + `41` + `42` + `43` + `44` + `45` + `46` + `48` + `49` + `50`) %>% 
  mutate(age_group_51_99 = rowSums(df_men[, 53:101]))

df_men <- df_men[, c("year", "doc_count", "age_group_1_21", "age_group_22_30", "age_group_31_50", "age_group_51_99")]


## Script: 1800-1913 women

df_women <- read_csv("data/finalproject1800-1913-women.csv")

df_women <- df_women %>% rename(year = key)

df_women <- subset(df_women, year >= 1800)

df_women <- df_women %>%
  mutate(age_group_1_21 = `1` + `2` + `3` + `4` + `5` + `6` + `7` + `8` + `9` + `10` + `11` + `12` + `13` + `14` + `15` + `16` + `17` + `18` + `19` + `20` + `21`) %>% 
  mutate(age_group_22_30 = `22` + `23` + `24` + `25` + `26` + `27` + `28` + `29` + `30`) %>% 
  mutate(age_group_31_50 =  `31` + `32` + `33` + `34` + `35` + `36` + `37` + `38` + `39` + `40` + `41` + `42` + `43` + `44` + `45` + `46` + `48` + `49` + `50`) %>% 
  mutate(age_group_51_99 = rowSums(df_women[, 53:101]))

df_women <- df_women[, c("year", "doc_count", "age_group_1_21", "age_group_22_30", "age_group_31_50", "age_group_51_99")]


