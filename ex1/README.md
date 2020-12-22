# Linear Regression
## Part 1: Linear Regression with one variable
### _Objective:_
Implement linear regression with one variable to predict profits for a food truck.

### _Training set_

|     | Population | Profit  |
|-----|------------|---------|
| 1   | 6.1101     | 17.592  |
| 2   | 5.5277     | 9.1302  |
| 3   | 8.5186     | 13.662  |
| ... | ...        | ...     |
| 97  | 5.4369     | 0.61705 |

### _Results_

Predicted profit for a population of 35,000 = `4,519.76`

Predicted profit for a population of 70,000 = `45,342.45`


![Scatter ](https://i.imgur.com/sumKn7j.png)

_Scatter plot of training data and Linear Regression_


![J](https://i.imgur.com/cTTNYD6.png)

_Cost function J(ϴ) surface plot_

![J](https://i.imgur.com/9TlujIE.gif)

_Cost function J(ϴ) contour plot showing minimum_


## Part 2: Linear Regression with multiple variables
### _Objective:_
Implement linear regression with multiple variables to
predict the prices of houses.

### _Training set_
|     | Size (ft²) | # bedrooms | Price  |
|-----|------------|------------|--------|
| 1   | 2104       | 3          | 399900 |
| 2   | 1600       | 3          | 329900 |
| 3   | 2400       | 3          | 369900 |
| ... | ...        | ...        | ...    |
| 47  | 1416       | 2          | 232000 |

### _Results_
Predicted price for a house with 1650 ft² and 3 beedrooms: `$293,081.46`

![J](https://i.imgur.com/bmjGvbL.png)

_Convergence of gradient descent with an appropriate learning rate_