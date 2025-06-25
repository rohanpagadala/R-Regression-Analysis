library(ggplot2)

data(mtcars)
model_mtcars <- lm(mpg ~ wt, data = mtcars)
summary(model_mtcars)
plot1 <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "blue") +
  ggtitle("Regression on mtcars: mpg ~ wt") +
  theme_minimal()
ggsave("plot_mtcars.png", plot = plot1, width = 6, height = 4)

data(iris)
iris_setosa <- subset(iris, Species == "setosa")
model_iris <- lm(Sepal.Length ~ Petal.Length, data = iris_setosa)
summary(model_iris)
plot2 <- ggplot(iris_setosa, aes(x = Petal.Length, y = Sepal.Length)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", col = "red") +
  ggtitle("Regression on iris setosa: Sepal.Length ~ Petal.Length") +
  theme_minimal()
ggsave("plot_iris.png", plot = plot2, width = 6, height = 4)
