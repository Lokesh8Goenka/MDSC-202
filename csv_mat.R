data = read.csv("heart_rate.csv")
df1 = data[-c(101:41033), ]
df = subset(df1, select = -c(uuid))
df
mat = data.matrix(df)
dim(mat)

mat1 = matrix(1,100,1) # col matrix of 1's

mat2 =   mat1 %*% t(mat1)  # matrix of 1's ---> 1*1`

A = mat - (mat2 %*% mat)/15    # x = X - 11'X ( 1 / n )

B = t(A)%*%A          #x`*x
B/100

