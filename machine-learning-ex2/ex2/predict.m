function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%

% 这个函数的目的是：计算你的预测的准确率
% 方法是用你得到的theta作为h(x)的参数，对训练集中的数据全都预测一遍
% 然后与训练集中对应的y值进行对比，计算出准确率

% 对训练集进行逐行便利，计算出每个训练样例的y值准确率
% 如果大于或等于0.5，则将p对应位置设为1，否则为0

for i = 1: m
  if (sigmoid(X(i,:)*theta) >= 0.5)
    p(i) = 1;
  else
    p(i) = 0;
  end

% =========================================================================


end
