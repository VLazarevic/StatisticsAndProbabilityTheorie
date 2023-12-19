n_students <- 137
yes_voters <- 131

prop.test(yes_voters, n_students, alternative = "greater", conf.level = 0.99)