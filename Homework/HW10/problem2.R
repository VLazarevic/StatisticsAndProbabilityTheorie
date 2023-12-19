n_students <- 137
yes_voters <- 131

#prop.test(yes_voters, n_students, p = 3/4, alternative = "greater", conf.level = 0.99)

prop.test(yes_voters, n_students, p = 3/4, alternative = "less", conf.level = 0.99)
