function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% 注意，此处z不仅仅是数字,还有可能是矩阵或者是向量
% 我们从矩阵的角度考虑可以包含所有情况
% 首先 1+e^(-Z),exp(-z)是一个矩阵，所以我们需要将1扩充为与exp(-z)同规格的矩阵
% 所以使用了ones(size(-z))
% 然后S型函数还需要求倒数，对于矩阵你需要对矩阵中的每一个元素进行求倒数，所以使用 ./

g = 1./(ones(size(-z))+exp(-z));
% =============================================================

end
