clc
a= input('a= ');
b= input('b= ');
c= input('c= ');

n= 1 + floor((b-a)/c);    %���a:b:c�ĳ���n
xn= a + (n - 1)*c;        %����������һ��Ԫ��
delta= b - xn;   %����������һ��Ԫ����b�ľ��� 

fprintf('the size of vector(%.3f:%.3f:%.3f) is %d\n', ...
               a, c, b, n)
fprintf('the distance of the last element of vector(%.3f:%.3f:%.3f) and b= %.3f is %.3f\n', ...
               a, c, b, b, delta)
