% P8_1_6
function y= OddEvenStack(x)
% x,y为长度为n的列向量,且n为偶数
% y= [ xOdd; xEven]
n= length(x);
xOdd= x(1:2:n);
xEven= x(2:2:n);
y= [ xOdd; xEven];


end
% OddEvenStack函数结束