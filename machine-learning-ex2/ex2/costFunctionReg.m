function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% Calulate the function h, we know it's sigmoid function
h = sigmoid(X*theta);
% Calculate the cost function
% 因为theta1不参与正规化，所以应当把theta1去掉（而且式子中也是不包含这一项的）
% 注意：式子中向量下标是从0开始的，而在Octave中，向量下标是从1开始的。

J = 1/m*(-y'*log(h)-(1-y)'*log(1-h))+lambda/(2*m)*(sum(theta.^2)-theta(1)^2);
% Calculate the Gradient
grad = 1/m*X'*(h-y)+lambda/m*theta;
% It must start at 1
grad(1) = (1/m*X'*(h-y))(1);

% =============================================================

end
