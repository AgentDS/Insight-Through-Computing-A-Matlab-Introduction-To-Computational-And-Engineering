clc
n= 100;
x= [-20 -10 0 10 20 30];
r= rand(n,1);
s= ceil(6*r);
y= zeros(n,1);
for  k= 1:n
    j= s(k);
    y(k)= x(j);
    fprintf('%5d',y(k))
    if  mod(k,10) == 0
        fprintf('\n')
    end
end
m= [-20 -10 0 10 20 30];
hist(y,x)
fprintf('\n')

