mat = matrix(sample( 1 : 20, 30, replace = TRUE), ncol = 2) # random matrix mat
mat


mat1 = matrix(1,15,1) # col matrix of 1's
mat1

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
B/15
