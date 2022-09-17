# n sayıların 1'den kaça kadar olduğu
# x ve y seçtiğimiz sayılar

f <- function(n, x, y) {
  mtrx <- matrix(1:n, nrow = sqrt(n), ncol = sqrt(n), byrow = T)
  xplace <- which(mtrx == x, T)
  yplace <- which(mtrx == y, T)
  if ((xplace[1] <= yplace[1]) & (xplace[2] <= yplace[2])) {
    rslt <- mtrx[xplace[1]:yplace[1], xplace[2]:yplace[2]]
    print(rslt)
  } else
  {
    print("sayılar uyumsuz")
  }
}
f(9, 2, 9)
f(9, 2, 7)

