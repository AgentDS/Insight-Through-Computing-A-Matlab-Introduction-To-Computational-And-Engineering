% P8_1_6
function y= OddEvenStack(x)
% x,yΪ����Ϊn��������,��nΪż��
% y= [ xOdd; xEven]
n= length(x);
xOdd= x(1:2:n);
xEven= x(2:2:n);
y= [ xOdd; xEven];


end
% OddEvenStack��������