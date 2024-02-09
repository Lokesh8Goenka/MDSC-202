A = matrix(data=c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol=3, byrow = TRUE)
rownames(A) = c("a", "b", "c")

# Naming columns
colnames(A) = c("c", "d", "e")

cat("The 3x3 matrix:\n")
print(A)

# STORING THE VALUES BY COLUMN  
matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow = FALSE)
# storing the values by row
matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow = TRUE)

# row 1 = 1,2,3; row 2 = 4,5,6
rbind(1:3,4:6) 

# col 1= 1,4; col 2 = 2,5; col 3 = 3,6
cbind(c(1,4),c(2,5),c(3,6))


# ncol,nrow, -> no. of rows and col

mymat <- rbind(c(1,3,4),5:3,c(100,20,90),11:13)
mymat
dim(mymat)  #dimension of the matrix -> dim(mat)
nrow(mymat) # no. of rows
ncol(mymat)  # no of cols

A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
diag(x=A) #diagnol elements
A[3,2] # element3rd row, 2nd col
A[,2] # 2nd col
A[2:3,] # row 2,3 with all cols
A[,c(3,1)] # elements from col 3 and 1 from all the rows
A[c(3,1),2:3] # elements from 2 and 3 col of the 3 and 1 row

A[,-2] # element except the 2nd col
A[-1,-2] # elements except the 1st row and the 2nd col
B<-A # copy A to B

B[2,]<- 1:3 # 2nd row should be replaced by 1,2,3

B[c(1,3),2] <- 900 # 2nd element of row 1 and 3 be 900

B[,3] <-B[3,] #3rd row will be 3rd col
B
#2nd and 1st element of row 1,3 will be updated by vol order
B[c(1,3),2:1] <- c(65,-65,88,-88) 
B
# elements of col 1&3 and row 1&3 will be changed in col order
B[c(1,3),c(1,3)] <- c(-7,7) 
B

# change the diagonal elements to 0 
# rep will do repeat 3 times and put value as 0
diag(x=B) <-rep(x=0,times=3)
B
