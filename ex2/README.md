# Logistic Regression
## _Objective:_
Implement logistic regression and apply it to two different datasets

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

For a student with scores `45` and `85`, we predict an admission probability _`p(y = 1 | x; ϴ)`_ of `0.776289` 