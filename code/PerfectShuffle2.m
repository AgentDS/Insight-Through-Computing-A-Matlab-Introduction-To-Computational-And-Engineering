% M8_1_1
function y= PerfectShuffle2(x)
% x��һ������Ϊn��������,n= 2m
% y��һ������Ϊn��������,��x������ϴ�ƺ�Ľ��

% ��ʼ��
n= length(x);
y= zeros(n,1);
m= n/2;


y(1:2:n)= x(1:m);
y(2:2:n)= x(m+1:n);


end
% PerfectShuffle2��������