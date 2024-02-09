# Finding the eigen values, vectors and normalised eigen vectors

A = matrix(data=c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol=3, byrow = TRUE)
print(A)

val = eigen(A)
eigen_val = val$values
eigen_vec = val$vectors
eigen_vec
eigen_val
vec1 = eigen_vec[,1]
vec2 = eigen_vec[,2]
vec3 = eigen_vec[,3]

normalised_vec_1 = vec1 / sqrt(crossprod(vec1))
round(A %*% x, 5) == round(2 * x, 5)
normalised_vec_2 = vec2 / sqrt(crossprod(vec2))
normalised_vec_3 = vec3 / sqrt(crossprod(vec3))

normalised_vec_1
normalised_vec_2
normalised_vec_3
