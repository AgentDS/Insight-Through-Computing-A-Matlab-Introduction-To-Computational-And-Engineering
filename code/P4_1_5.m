clc
a= input('a= ');
b= input('b= ');
c= input('c= ');

n= 1 + floor((b-a)/c);    %求出a:b:c的长度n
xn= a + (n - 1)*c;        %求出向量最后一个元素
delta= b - xn;   %求出向量最后一个元素与b的距离 

fprintf('the size of vector(%.3f:%.3f:%.3f) is %d\n', ...
               a, c, b, n)
fprintf('the distance of the last element of vector(%.3f:%.3f:%.3f) and b= %.3f is %.3f\n', ...
               a, c, b, b, delta)
