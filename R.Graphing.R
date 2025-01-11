# Graphing Life Expectancy vs. GDP
# Victor Thompson (courtesy of Jeffrey Oliver, University of Arizona)
# vthompson@rider.edu 
# 01-09-2025

# Read in data
all_gapminder <- read.csv(file = "data/gapminder-FiveYearData.csv",
                          stringsAsFactors = TRUE)

# Subset data
gapminder <- all_gapminder[all_gapminder$year == 2002, ]

plot(x = gapminder$gdpPercap, 
     y = gapminder$lifeExp, 
     main = "Life expectancy v. GDP", 
     xlab = "GDP Per capita", 
     ylab = "Life expectancy (years)")

# Make new vector of Log GDP
gapminder$Log10GDP <- log10(gapminder$gdpPercap)

# Try same plot but with a log
plot(x = gapminder$Log10GDP, 
     y = gapminder$lifeExp, 
     main = "Life expectancy v. GDP", 
     xlab = "GDP Per capita", 
     ylab = "Life expectancy (years)
     
# Now add color
levels(gapminder$continent)

# Create new vector for colors
gapminder$colors <- NA

# Assign colors based on gapminder$continent
gapminder$colors[gapminder$continent == "Africa"]<- "red"
gapminder$colors[gapminder$continent == "Americas"]<- "yellow"
gapminder$colors[gapminder$continent == "Asia"]<- "green"
gapminder$colors[gapminder$continent == "Europe"]<- "purple"
gapminder$colors[gapminder$continent == "Oceania"]<- "pink"

# Create main plot
plot(x = gapminder$Log10GDP, 
     y = gapminder$lifeExp, 
     main = "Life expectancy v. GDP", 
     xlab = "Log(GDP Per capita)", 
     ylab = "Life expectancy (years)",
     col = gapminder$colors,
     pch = 19) # A solid circle symbol
     
# We will also need to add a legend, so we know what the colors mean.
# Here we have to be sure the order of the colors matches the order 
# of the different levels of gapminder$continents.
legend("topleft",
      legend = levels(gapminder$continent),
      col = c("red", "yellow", "green", "purple", "pink"),
      pch = 19) 






