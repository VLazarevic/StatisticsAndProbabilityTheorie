# Gegebene Daten
data <- matrix(c(431, 257, 200, 1305, 1179, 70, 70, 160, 10, 128, 148, 42), nrow = 4, byrow = TRUE)
rownames(data) <- c("Single", "Married", "Widowed", "Divorced")
colnames(data) <- c("Men", "Women", "Diverse")

# Durchführung des Chi-Quadrat-Unabhängigkeitstests
chi_squared_result <- chisq.test(data)

# Ausgabe der Teststatistik und p-Wert
print(chi_squared_result)

# Überprüfung der Signifikanz bei einem Signifikanzniveau von 10%
alpha <- 0.10
if (chi_squared_result$p.value < alpha) {
  print("Die Nullhypothese wird auf dem 10%-Signifikanzniveau abgelehnt. Es gibt einen Zusammenhang zwischen Geschlecht und Familienstand.")
} else {
  print("Die Nullhypothese wird auf dem 10%-Signifikanzniveau nicht abgelehnt. Es gibt keinen signifikanten Zusammenhang zwischen Geschlecht und Familienstand.")
}