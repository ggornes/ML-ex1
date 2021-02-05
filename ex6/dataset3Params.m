function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 3;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% C_params = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
% sigma_params = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

C_params = [0.1; 0.3; 1; 3; 10;];
sigma_params = [0.1; 0.3; 1; 3; 10;];

% C_params = [0.1; 0.3; 1];
% sigma_params = [0.1; 0.3; 1];
errors = zeros()
counter = 1;


for i = 1 : size(C_params, 1)
    for j = 1 : size(sigma_params, 1)
        model= svmTrain(X, y, C_params(i), @(x1, x2) gaussianKernel(x1, x2, sigma_params(j)));
        predictions = svmPredict(model, Xval);
    errors(counter, 1) = mean(double(predictions ~= yval));
    errors(counter, 2) = C_params(i);
    errors(counter, 3) = sigma_params(j);
    counter = counter + 1;
    end
end

display(errors)
[min_err, ix] = min(errors(:,1))
C = errors(ix,2);
sigma = errors(ix,3);

% model = svmTrain(X, y, C, @linearKernel, 1e-3, 20);









% =========================================================================

end
