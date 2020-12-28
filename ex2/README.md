# Logistic Regression
## _Objective:_
Implement logistic regression and apply it to two different datasets.

## Part 1:
Build a classification model that estimates an applicant's probability of admission based the scores from those two exams.

### _Training set_
|     | Score Exam 1 | Score Exam 2  | Admitted |
|-----|--------------|---------------|----------|
| 1   | 34.62        | 78.02         | 0        |
| 2   | 30.28        | 43.8          | 0        |
| 3   | 35.84        | 72.90         | 0        |
| ... | ...          | ...           | ...      |
| 100 | 74.77        | 89.52         | 1        |


![scatter_plot](https://i.imgur.com/tPLpTsQ.png)

_Scatter plot of training data_

### _Results_
![scatter_plot_boundary](https://i.imgur.com/WWVRuwx.png)

_Scatter plot of training data with decision boundary_

For a student with scores `45` and `85`, we predict an admission probability _`p(y = 1 | x; ϴ)`_ of `0.776289`.

The trained model has an accuracy of `89%`. This can be seen in the graph as there are `6` cases (yellow circles) of not admitted that are beyond the decision boundary line, and `5` cases (black crosses) of admitted below the decision boundary.


## Part 2:
Implement regularized logistic regression to predict whether microchips from a fabrication plant passes quality assurance (QA).

### _Training set_

|     | microchip test 1 | microchip test 2 |
|-----|------------------|------------------|
| 1   | 0.0512           | 0.699            |
| 2   | -0.092           | 0.684            |
| ... | ...              | ...              |
| 118 | 0.632            | -0.030           |


![scatter_plot_data2](https://i.imgur.com/c2WDhQH.png)