# Load necessary libraries
library(ggplot2)
library(gridExtra)

# Load the mtcars dataset
data(mtcars)

# Create scatter plots for selected variables
plot1 <- ggplot(mtcars, aes(x=mpg, y=hp)) + geom_point() + 
  ggtitle("MPG vs. HP") + theme_minimal()

plot2 <- ggplot(mtcars, aes(x=mpg, y=wt)) + geom_point() + 
  ggtitle("MPG vs. Weight") + theme_minimal()

plot3 <- ggplot(mtcars, aes(x=mpg, y=qsec)) + geom_point() + 
  ggtitle("MPG vs. Quarter Mile") + theme_minimal()

plot4 <- ggplot(mtcars, aes(x=hp, y=wt)) + geom_point() + 
  ggtitle("HP vs. Weight") + theme_minimal()

plot5 <- ggplot(mtcars, aes(x=hp, y=qsec)) + geom_point() + 
  ggtitle("HP vs. Quarter Mile") + theme_minimal()

plot6 <- ggplot(mtcars, aes(x=wt, y=qsec)) + geom_point() + 
  ggtitle("Weight vs. Quarter Mile") + theme_minimal()

# Combine all plots into a grid
grid.arrange(plot1, plot2, plot3, plot4, plot5, plot6, ncol=3)

# Create scatter plots with regression lines
plot1 <- ggplot(mtcars, aes(x=mpg, y=hp)) + 
  geom_point() + 
  geom_smooth(method="lm", se=FALSE, color="blue") + 
  ggtitle("MPG vs. HP with Regression Line") + theme_minimal()

plot2 <- ggplot(mtcars, aes(x=mpg, y=wt)) + 
  geom_point() + 
  geom_smooth(method="lm", se=FALSE, color="blue") + 
  ggtitle("MPG vs. Weight with Regression Line") + theme_minimal()

plot3 <- ggplot(mtcars, aes(x=mpg, y=qsec)) + 
  geom_point() + 
  geom_smooth(method="lm", se=FALSE, color="blue") + 
  ggtitle("MPG vs. Quarter Mile with Regression Line") + theme_minimal()

# Combine the plots into a grid again
grid.arrange(plot1, plot2, plot3, ncol=2)

# Save the plot as a PNG file
ggsave("scatter_plots_grid.png", plot = grid.arrange(plot1, plot2, plot3, ncol=2))


