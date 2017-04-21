% P8_1_5   (b)
function y= MultipleLeftShift(x,k)
% x,y均为长度为n的行向量
% y为将x中元素依此左移k个得到的结果
n= length(x);
y= zeros(1,n);
y(1:n-k)= x(1+k:n);
y(n-k+1:n)= x(1:k);


end
% MultipleLeftShift函数结束