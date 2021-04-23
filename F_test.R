##Kiem dinh mau sinh ngau nhien
t <- sample.int(100, size = 10, replace = FALSE, prob = NULL)
b <- sample.int(100, size = 10, replace = FALSE, prob = NULL)
var.test(t, b, alternative = "greater", conf.level = 0.95)

##Kiem dinh khi co so lieu thong ke
x <- rnorm(50, mean = 0, sd = 2)
y <- rnorm(30, mean = 1, sd = 1)
F_test <- var.test(x, y, alternative = "greater", conf.level = 0.95)
#F_test <- var.test(lm(x ~ 1), lm(y ~ 1))
p_value <- F_test$p.value
alpha = 0.05
if (p_value < alpha) {
  print("co bang chung bac bo H0")
}else print("Chua co bang chung bac bo H0")



