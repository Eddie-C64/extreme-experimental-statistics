A = matrix(data = 1:9,nrow = 3, ncol = 3)
rownames(A) = c("r1","r2","r3")
colnames(A) = c('c1','c2','c3')
A[1,2]
A[2, ]
A[1:2, ]
A[c(1,3),]
A[-3, ]
A[-nrow(A),]
A[, 'c2']

nrow(A)
ncol(A)
length(A)
dim(A)

z = c(100,200,300)
rbind(A,z)
cbind(A,z)

min(z)
max(z)
sum(z)
mean(z)
sd(z)
var(z)

min(A)
max(A)
sum(A)
rowSums(A)
colSums(A)
rowMeans(A)
colMeans(A)
