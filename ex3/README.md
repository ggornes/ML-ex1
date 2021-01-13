# Multi-class Classification and Neural Networks
## _Objective:_
Implement one-vs-all logistic regression and neural networks to recognize hand-written digits.

## Part 1:
Use logistic regression and neural networks to recognize handwritten digits (from 0 to 9).

### _Dataset_

The data set contains 5000 training examples of handwritten digits, where each training example is a 20 pixel by 20 pixel grayscale image of the digit. Each pixel is represented by a floating point number indicating the grayscale intensity at that location. The 20 by 20 grid of pixels is "unrolled" into a 400-dimensional vector.

To intuitively visualize the data, we can transform the grayscale intensity as rounding down to 0 or up to 1 and then color the one's. In the example, I have selected the first element of the training set:

![zero](https://i.imgur.com/Y0AGzVS.png)

_Intuitive representation of the first element in the training set_

![zero](https://i.imgur.com/5fUCTOt.png)

_First element in the training set_

And now we can visualize 100 selected samples from the training set:

![sample](https://i.imgur.com/M9U323o.png)



### _Results_

Training One-vs-All Logistic Regression resulted in cost functions aproximately equal to zero for each of the classes (digits from 0 to 9)

| class (digit) | iterations | Cost function |
|---------------|------------|---------------|
| 0             | 50         | 1.384986e-02  |
| 1             | 50         | 5.725285e-02  |
| 2             | 50         | 6.407759e-02  |
| 3             | 50         | 3.834617e-02  |
| 4             | 50         | 6.126755e-02  |
| 5             | 50         | 2.210527e-02  |
| 6             | 50         | 3.610527e-02  |
| 7             | 50         | 8.427659e-02  |
| 8             | 50         | 7.853913e-02  |
| 9             | 50         | 1.007681e-02  |

And we obtained a training `accuracy` of `94.9%`


## Part 2:
Implement a neural network to recognize handwritten digits using the same training set as before and using parameters from a neural network
that have already been trained. The goal is to implement the feedforward
propagation algorithm to use the already calculated weights for prediction.
