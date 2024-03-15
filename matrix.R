Mat_A <- matrix(c(1,2,-1,3,4,5,3,-6,2),nrow = 3,byrow = TRUE)
Mat_A
Mat_B <- matrix(c(2,6,-1,-4,2,3,9,6,5),nrow = 3,byrow = TRUE)
Mat_B
#a.add a matrix A and B
Add_AB <- Mat_A+Mat_B
Add_AB
mul_ab <- Mat_A %*% Mat_B
mul_ab
inv_A <-solve(Mat_A)
inv_A
inv_B <-solve(Mat_B)
inv_B
tran_A <- t(Mat_A)
tran_A
tran_B <- t(Mat_B)
tran_B