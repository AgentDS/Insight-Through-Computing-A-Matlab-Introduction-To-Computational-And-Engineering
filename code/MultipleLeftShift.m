% P8_1_5   (b)
function y= MultipleLeftShift(x,k)
% x,y��Ϊ����Ϊn��������
% yΪ��x��Ԫ����������k���õ��Ľ��
n= length(x);
y= zeros(1,n);
y(1:n-k)= x(1+k:n);
y(n-k+1:n)= x(1:k);


end
% MultipleLeftShift��������