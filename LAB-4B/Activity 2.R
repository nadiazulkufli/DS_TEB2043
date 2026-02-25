V1 = c(2,3,1,5,4,6,8,7,9)
#Create matrix -1 (3x3)
Matrix1 <- matrix(V1, nrow = 3, ncol = 3)
rownames(Matrix1) <- c("R1","R2","R3")
colnames(Matrix1) <- c("C1","C2","C3")
Matrix1

Matrix2 <- t(Matrix1)
rownames(Matrix2) <- c("R1","R2","R3")
colnames(Matrix2) <- c("C1","C2","C3")
Matrix2

# Addition
Matrix1 + Matrix2

# Subtraction
Matrix1 - Matrix2

# Multiplication (element-wise)
Matrix1 * Matrix2

# Division (element-wise)
Matrix1 / Matrix2
