function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

m = size(g,1);
n = size(g,2);

for i = 1 : n
    for j = 1 : m
        g(j,i) = 1 / (1 + exp(-z(j,i)));
    end
end


% =============================================================

end
