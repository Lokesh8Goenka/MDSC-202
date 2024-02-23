mat = matrix(sample( 1 : 20, 30, replace = TRUE), ncol = 2) # random matrix mat
mat

mat1 = matrix(1,15,1) # col matrix of 1's
mat1

corr = cor(mat)
corr

covar = cov(mat)  # covariance of the matrix mat
covar

mat1_t = t(mat1)
mat2 = mat1_t %*% mat1  # matrix of 1's
mat2  

mat3 = mat
mat3
A = mat - (mat2 %*% mat3)/15
A

B = t(A)%*%A
covar_matrix = B/15

covar_matrix

# for correaltion
diag = sd(covar_matrix)
d = prod(sd(covar_matrix[1:2]))
d

correlation_mat = covar_matrix/d
correlation_mat
