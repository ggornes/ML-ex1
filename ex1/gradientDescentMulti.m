function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    % ==== Not vectorized

    % delta0 = 0;
    % delta1 = 0;
    % delta2 = 0;

    % for j = 1 : m
    %     delta0 = delta0 + (1/m)*(theta(1)*X(:,1)(j) + theta(2)*X(:,2)(j) + theta(3)*X(:,3)(j) - y(j))*X(:,1)(j);
    %     delta1 = delta1 + (1/m)*(theta(1)*X(:,1)(j) + theta(2)*X(:,2)(j) + theta(3)*X(:,3)(j) - y(j))*X(:,2)(j);
    %     delta2 = delta2 + (1/m)*(theta(1)*X(:,1)(j) + theta(2)*X(:,2)(j) + theta(3)*X(:,3)(j) - y(j))*X(:,3)(j);

    % end

    %  temp0 = theta(1) - alpha * delta0;
    %  temp1 = theta(2) - alpha * delta1;
    %  temp2 = theta(3) - alpha * delta2;

    %  theta(1) = temp0;
    %  theta(2) = temp1;
    %  theta(3) = temp2;


     % Vectorized
     temp = theta - alpha * (1/m) * X' * (X * theta - y);
     theta = temp;

     J = computeCost(X, y, theta);

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
