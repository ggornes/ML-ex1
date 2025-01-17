function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1)); % 25x401
Theta2_grad = zeros(size(Theta2)); % 10x26

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m

X = [ones(m, 1) X];
% A = ones(size(X,1), size(X,2))';

a1 = zeros(size(X)); % 5000x401
z2 = zeros(m, hidden_layer_size); % 5000x25
a2 = zeros(m, hidden_layer_size + 1); % 5000x26
a3 = zeros(m, num_labels); % 5000x10
d3 = zeros(m, num_labels); % 5000x10
d2 = zeros(m, hidden_layer_size); % 5000x25


% a1 = X;
% a1 = [ones(5000, 1) a1];
% a2 = Theta1 * a1';
% a2 = a2';
% a2 = [ones(5000, 1) a2];
% z3 = Theta2*a2';
% a3 = sigmoid(z3);

yv=[1:num_labels] == y;

sum1 = 0;
reg = 0;
reg_theta1 = 0;
reg_theta2 = 0;



for i = 1 : m
    
    A1 = X(i,:); % 1x401
    a1(i,:) = A1;
    Z2 = Theta1 * A1'; % 25x1
    A2 = sigmoid(Z2); % 25x1
    A2 = A2'; % 1x25
    A2 = [ones(size(A2, 1), 1) A2]; % 1x26
    a2(i,:) = A2;
    Z3 = Theta2*A2'; % 10x1
    A3 = sigmoid(Z3); % 10x1
    a3(i,:) = A3;

    sum2 = 0;
    for k = 1 : num_labels
        sum2 = sum2 + yv(i,k)' * log(A3(k)) + (1 - yv(i,k)') * log(1 - A3(k));        
    end

    sum1 = sum1 + sum2;


    %%%%%%%%%%%%%%%%%%%

    % delta3 = round(A3) - yv(i,:)'; % 10x1
    % delta2 = (Theta2' * delta3) .* A2 .* (1 - A2); % 26x26


    % Theta1_grad = Theta1_grad + delta2 * A1';
    % Theta2_grad = Theta2_grad + delta3 * A2';

    %%%%%%%%%%%%%%%%%
end

for j = 1 : hidden_layer_size % 1:25 
    for k = 2 : (input_layer_size + 1) % 2:401
        reg_theta1 = reg_theta1 + (Theta1(j,k))^2;
    end
end

for j = 1: num_labels % 1:10 
    for k = 2 : (hidden_layer_size + 1) % 2:26
        reg_theta2 = reg_theta2 + (Theta2(j,k))^2;
    end
end


reg = reg_theta1 + reg_theta2;




J = -(1/m) * sum1 + (lambda/(2*m))*reg;


%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.

d3 = a3 - yv;
d2 = (d3*Theta2(:,2:end)) .* a2(:,2:end) .* (1 - a2(:,2:end)); % 26x26

Delta1 = d2'*a1;
Delta2 = d3'*a2;

Theta1_grad = (1/m) * Delta1;
Theta2_grad = (1/m) * Delta2;


for i = 1 : size(Delta1, 1)
    for j = 2 : size(Delta1, 2)
        if (j != 0)
            Theta1_grad(i,j) = Theta1_grad(i,j) + (lambda/m) * Theta1(i,j);
        end
    end
end

for i = 1 : size(Delta2, 1)
    for j = 2 : size(Delta2, 2)
        if (j != 0)
            Theta2_grad(i,j) = Theta2_grad(i,j) + (lambda/m) * Theta2(i,j);
        end
    end
end


grad = [Theta1_grad(:) ; Theta2_grad(:)];




%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%



















% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
