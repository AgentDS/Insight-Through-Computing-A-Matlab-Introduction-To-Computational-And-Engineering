% P8_1_5    (a)
function y= LeftShift(x)
% x,y��Ϊ����Ϊn��������
% yΪ��x��Ԫ����������һλ�õ�
n= length(x);
y= zeros(1,n);
y(1:n-1)= x(2:n);
y(n)= x(1);


end
% LeftShift��������