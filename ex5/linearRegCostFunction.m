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

sum1 = 0;
sum2 = 0;

for i = 1 : m
 sum1 = sum1 + (theta(1) + theta(2)*X(:,2)(i) - y(i))^2;
end

for j = 2 : n
    sum2 = sum2 + theta(j)^2;
end

J = (1/(2*m)) * sum1 + lambda/(2*m) * sum2;



% Calculate gradients

for j = 1 : n
    for i = 1 : m
        % if (j == 1)
        %     grad(j) = grad(j) + (1/m) * (sigmoid(X(i, :) * theta) -y(i)) * X(i,j);
        % else
        %     grad(j) = grad(j) + (1/m) * (sigmoid(X(i, :) * theta) -y(i)) * X(i,j) + (lambda/m) * theta(j);
        grad(j) = grad(j) + (1/m) * (X(i, :) * theta -y(i)) * X(i,j);
    end
    if (j != 1)
        grad(j) = grad(j) + (lambda/m) * theta(j);
end




% =========================================================================

grad = grad(:);

end
