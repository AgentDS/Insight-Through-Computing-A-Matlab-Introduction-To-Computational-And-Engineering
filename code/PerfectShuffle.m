function y= PerfectShuffle(x)
% x��һ������Ϊn��������,n= 2m
% y��һ������Ϊn��������,��x������ϴ�ƺ�Ľ��

% ��ʼ��
n= length(x);
y= zeros(n,1);
m= n/2;

for  k= 1:m
    y(2*k-1)= x(k);
    y(2*k)= x(k+m);
end % for������


end
% PerfectShuffle��������