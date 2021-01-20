function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

n = size(X)(2); % number of features

reg = 0;

for j = 2 : n
    reg = reg + theta(j)^2;
end

J = 1/(2*m) * (X*theta - y)' * (X*theta - y) + lambda/(2*m) * reg;



% Calculate gradients

for j = 1 : n
    for i = 1 : m
        grad(j) = grad(j) + (1/m) * (X(i, :) * theta -y(i)) * X(i,j);
    end
    if (j != 1)
        grad(j) = grad(j) + (lambda/m) * theta(j);
end




% =========================================================================

grad = grad(:);

end
