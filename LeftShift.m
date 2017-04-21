% P8_1_5    (a)
function y= LeftShift(x)
% x,y均为长度为n的行向量
% y为将x中元素依此左移一位得到
n= length(x);
y= zeros(1,n);
y(1:n-1)= x(2:n);
y(n)= x(1);


end
% LeftShift函数结束