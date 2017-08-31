function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% 得到括号里的
A = X*theta-y;
% 再得到括号的平方
A = A.^2;
% 接着得到连加的值
errorSum = sum(A);
% 求得损失函数
J = 1/(2*m)*errorSum;

% =========================================================================

end
