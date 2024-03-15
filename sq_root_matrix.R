
# Square root matrix of a given square matrix
n = 3
mat = c(2, 0, 0, 0, 8, 0, 0, 0, 6)

M = matrix(mat, nrow=n, ncol=n)

eigen_val = eigen(M)
sqrt_eigvals = sqrt(eigen_val$values)

lambda = diag(sqrt_eigvals)
sqrt_M = eigen_val$vectors %*% lambda %*% solve(eigen_val$vectors)

print("Square root Matrix:- ")
print(sqrt_M)


