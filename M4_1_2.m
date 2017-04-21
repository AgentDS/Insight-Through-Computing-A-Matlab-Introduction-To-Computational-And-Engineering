L= -2;
R= 3;
N= 200;

clc
x= linspace(L, R, N);
y= sin(5*x).*exp(x/2)./(1+x.^2);

tic
figure
plot(x,y,[L R],[0 0],':')
hold on

afind= y(1: end-1).*y(2: end);     %利用根存在定理找出存在零点的区间[x(i),x(i+1)]
ind= find(afind <= 0);    %直接用find找出所有满足y(i)*y(i+1)<=0的i
for  i= ind
       %将y＝f(x)在[x(i),x(i+1)]在区间上做线性近似y＝ax+b
       a= ( y(i+1) - y(i) )/(x(i+1) - x(i));   %求出a     
       b= y(i) - a*x(i);      %求出b
       zero= -b/a;     %求出近似直线的零点
       plot(zero, 0, 'gx')    %用绿色叉号标出y=f(x)的零点，及y=ax+b的零点
       fprintf('i= %d\n',i)
end

MAX= max(y);      %用蓝色圆圈标出极大值
nMax= find(y == MAX);
plot(x(nMax), MAX, 'bo')

MIN= min(y);
nMin= find(y == MIN);
plot(x(nMin), MIN, 'ro')  %用红色圆圈标出极小值

title('The function f(x) = sin(5x) * exp(x/2)/(1+x^2)')
ylabel('y= f(x)')
xlabel('x')
T= toc;
fprintf('time= %.10f\n', T)