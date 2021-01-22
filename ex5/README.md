# Regularized Linear Regression and Bias v.s. Variance
## _Objective:_
Implement regularized linear regression and use it to study models with different bias-variance properties.


## _Dataset_

![dataset](https://i.imgur.com/hLIHxSo.png)

_Plot of training data_

## _Results:_

### __Linear Regresion Model__
Implement regularized linear regression to predict the amount of water flowing out of a dam using the change of water level in a reservoir.

The best fit line tells us that the model is not a good fit to the data because the data has a non-linear pattern.

![linear_reg](https://i.imgur.com/rSQ7SYx.png)

_Linear regression fit_



In the next figure, you can observe that both the train error and cross validation error are high when the number of training examples is increased. This reflects a high bias problem in the model. The linear regression model is too simple and is unable to fit our dataset well.

![linear_reg_2](https://i.imgur.com/qSjXctJ.png)

_Learning curve for Linear regression_

The problem with our linear model was that it was too simple for the data
and resulted in underfitting (high bias). Now, we will address this problem by adding more features to the model.

Keep in mind that even though we have polynomial terms in our feature vector, we are still solving a linear regression optimization problem.

### __Polynomial Regresion Model__

The polynomial regression with λ = 0 is able to follow the datapoints very well - thus, obtaining a low training error. However, the polynomial fit is very complex and even drops off at the extremes. This is an indicator that the polynomial regression model is overfitting the training
data and will not generalize well .

![poly_linear_reg](https://i.imgur.com/3203WHr.png)

_Polynomial Linear regression fit (λ = 0)_

![poly_linear_reg_2](https://i.imgur.com/HHZp5wR.png)

_Learning curve for Polynomial Linear regression (λ = 0)_

The learning curve shows the same effect where the training error is low, but the cross validation error is high. There is a gap between the training and cross validation errors, indicating a high variance problem.

One way to combat the overfitting (high-variance) problem is to add regularization to the model (λ > 0). Now, we will get to try different λ parameters to see how regularization can lead to a better model.


![learning_curve](https://i.imgur.com/j72h3Ih.png)

_Learning curve for Polynomial Linear regression (trying different values for λ)_

In this figure, we can see that the best value of λ is around 3, where the Cross Validation is lowest.

![poly_reg](https://i.imgur.com/vBDryG3.png)

_Polynomial Linear regression (λ = 3)_

![poly_reg_2](https://i.imgur.com/ZQE1wbA.png)

_Learning curve showing that both the cross validation and training error converge to a relatively low value_

This shows the λ = 3 regularized polynomial regression model does not have the high-bias or high-variance problems. In effect, it achieves a good trade-off between bias and variance.

