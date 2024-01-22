larger_hospital_births_per_day <- 55
p_boys_larger_hospital <- 0.65
days_year <- 365

# Berechnung der Varianz von L
variance_L <- days_year * p_boys_larger_hospital * (1 - p_boys_larger_hospital) / larger_hospital_births_per_day
print(variance_L)

quantile_to_approximate <- 0.74

# Berechnung der Standardabweichung von L (Standardabweichung = Wurzel der Varianz)
sd_L <- sqrt(variance_L)

# Berechnung der Standardnormalverteilung für das 0.74-Quantil
approx_quantile_L <- qnorm(quantile_to_approximate, mean = 0, sd = 1)

# Approximation des 0.74-Quantils von L
quantile_L <- larger_hospital_births_per_day * (p_boys_larger_hospital + approx_quantile_L * sd_L)
print(quantile_L)

smaller_hospital_births_per_day <- 18
p_boys_smaller_hospital <- 0.65

# Berechnung der Erwartung von S
expectation_S <- days_in_year * p_boys_smaller_hospital / smaller_hospital_births_per_day
print(expectation_S)

# Berechnung der gemeinsamen Wahrscheinlichkeit, dass beide Ereignisse eintreten
p_both_events <- p_boys_larger_hospital * p_boys_smaller_hospital

# Berechnung der Korrelation zwischen L und S unter der Annahme von Unabhängigkeit
correlation_L_S <- 0
print(correlation_L_S)