data <- matrix(c(15, 45, 39, 87), nrow = 2, byrow = TRUE)
data
dimnames(data) <- list(
  Group = c("Vaccinated", "Not Vaccinated"),
  Outcome = c("Autism", "No Autism")
)
data

V = rowSums(data)[1]
A = colSums(data)[1]

n = sum(data)
data
expected_data = matrix(c( V*A/n, V*(n-A)/n, (n-V)*A/n, (n-A)*(n-V)/n), nrow=2, byrow = TRUE)
dimnames(expected_data) <- list(
  Group= c("Vaccinated", "Not Vaccinated"),
  Outcomew= c("Autism", "No Autism")
)
expected_data
e11 = expected_data[1,1]
e12 = expected_data[1,2]
e21 = expected_data[2,1]
e22 = expected_data[2,2]

o11 = data[1,1]
o12 = data[1,2]
o21 = data[2,1]
o22 = data[2,2]
n


(e11-o11)^2/e11 + (e12-o12)^2/e12 + (e21-o21)^2/e21 + (e22-o22)^2/e22

as.list((data-expected_data)^2/expected_data)


# hospitcal

contingency_table <- matrix(c(14, 65, 1186, 1635), nrow = 2, byrow = TRUE)
dimnames(contingency_table) <- list(
  Group = c("Died", "Survived"),
  Outcome = c("Hospital A", "Hospital B")
)
contingency_table

chisq.test(contingency_table, correct=TRUE)
chisq.test(contingency_table, correct=FALSE)
n = sum(contingency_table);n
D = rowSums(contingency_table)[1];D
A = colSums(contingency_table)[1];A
expected_data = matrix(c( A*D/n, D*(n-A)/n, (n-D)*A/n, (n-A)*(n-D)/n), nrow=2, byrow = TRUE)
dimnames(expected_data) <- list(
  Group = c("Died", "Survived"),
  Outcome = c("Hospital A", "Hospital B")
)
expected_data
contingency_table
e11 = expected_data[1,1]; e11
e12 = expected_data[1,2]; e12
e21 = expected_data[2,1]; e21
e22 = expected_data[2,2]; e22

o11 = contingency_table[1,1]; o11
o12 = contingency_table[1,2]; o12
o21 = contingency_table[2,1]; o21
o22 = contingency_table[2,2]; o22


(e11-o11)^2/e11 + (e12-o12)^2/e12 + (e21-o21)^2/e21 + (e22-o22)^2/e22


