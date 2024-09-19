#Operasi Dasar
sum <- 3+3
sum
diff <- 8-6
diff
product <- 7*2
product
quotient <- 15/5
quotient
power <- 2^4
power
#Operasi Ekpresi
result <- (10/2)*(30/3)
result
#Manipulasi String
full_name <- paste("Benhard","Leroy","Situmorang")
full_name
full_name_no_space <- paste0("Benhard","Leroy","Situmorang")
full_name_no_space
length <- nchar("Hello, R!")
length
sub_string <- substr("Hello, R!", 1, 5)
sub_string
#Manipulasi Vektor
a <- c(1,2,3,4,5)
a
doubled <- a*2
doubled
first_element <- a[1]
first_element
#Pengenalan Matriks
mat <- matrix(1:4, nrow=2, ncol=2)
mat
element=mat[1,2]
element
#Operasi Matriks
mat2 <- matrix(2:5, nrow=2, ncol=2)
mat2
sum_matrix <- mat+mat2
sum_matrix
product_matrix <- mat %*% mat2
product_matrix
transpose_matrix <- t(mat)
transpose_matrix
invers_mat <- solve(mat)
invers_mat