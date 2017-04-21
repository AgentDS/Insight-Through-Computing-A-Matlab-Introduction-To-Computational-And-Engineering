% P8_1_4
function y= Reverse(x)
% x为1xn的行向量
% y为1xn的将x中值反转后得到的行向量
n= length(x);
idx= n:-1:1;
y= x(idx);
end
% Reverse函数结束