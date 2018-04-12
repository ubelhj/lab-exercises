iris_df <- data.frame(iris)

# Select all values of data frame for Sepal.length
iris_df$Sepal.Length

# Select only rows of Virginica flowers
is_virginica <- iris_df$Species == "virginica"
virginica <- iris_df[is_virginica, ]

# Select only the sepal length of the Virginica flowers
virginica$Sepal.Length

# Select rows where Petal.Length > 4.0
long_petals <- iris_df$Petal.Length > 4.0

# Add a column to the dataframe indicating whether Petal.Length > 4.0
iris_df$long_petals <- long_petals

# Find the species type of the flower that has the longest Sepal length
max_length_index <- iris_df$Sepal.Length == max(iris_df$Sepal.Length)
iris_df[max_length_index, ]

# Select rows where species type is 'setosa' and Sepal.Width > 3.0
wide_sepal_setosa <- iris_df$Sepal.Width > 3.0 & iris_df$Species == "setosa"
iris_df[wide_sepal_setosa, ]
