function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = size(X)(2);

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% J = (1/m) * SUM (-y' * log(sigmoid(X * theta)) - (1 - y)' * log(1 - sigmoid((X * theta))) ) + labda/(2*m) SUM (thetaj ^ 2);

sum1 = 0;
sum2 = 0;

for j = 2 : n
    sum2 = sum2 + theta(j)^2;
end

for i = 1 : m
    sum1 = sum1 + (-y(i) * log(sigmoid(X(i, :) * theta)) - (1 - y(i)) * log(1 - sigmoid(X(i, :) * theta)) );
end

J = (1/(m)) * sum1 + lambda/(2*m) * sum2;


% Calculate gradients

for j = 1 : n
    for i = 1 : m
        % if (j == 1)
        %     grad(j) = grad(j) + (1/m) * (sigmoid(X(i, :) * theta) -y(i)) * X(i,j);
        % else
        %     grad(j) = grad(j) + (1/m) * (sigmoid(X(i, :) * theta) -y(i)) * X(i,j) + (lambda/m) * theta(j);
        grad(j) = grad(j) + (1/m) * (sigmoid(X(i, :) * theta) -y(i)) * X(i,j);
    end
    if (j != 1)
        grad(j) = grad(j) + (lambda/m) * theta(j);
end





% =============================================================

end
