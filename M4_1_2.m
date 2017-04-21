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

afind= y(1: end-1).*y(2: end);     %���ø����ڶ����ҳ�������������[x(i),x(i+1)]
ind= find(afind <= 0);    %ֱ����find�ҳ���������y(i)*y(i+1)<=0��i
for  i= ind
       %��y��f(x)��[x(i),x(i+1)]�������������Խ���y��ax+b
       a= ( y(i+1) - y(i) )/(x(i+1) - x(i));   %���a     
       b= y(i) - a*x(i);      %���b
       zero= -b/a;     %�������ֱ�ߵ����
       plot(zero, 0, 'gx')    %����ɫ��ű��y=f(x)����㣬��y=ax+b�����
       fprintf('i= %d\n',i)
end

MAX= max(y);      %����ɫԲȦ�������ֵ
nMax= find(y == MAX);
plot(x(nMax), MAX, 'bo')

MIN= min(y);
nMin= find(y == MIN);
plot(x(nMin), MIN, 'ro')  %�ú�ɫԲȦ�����Сֵ

title('The function f(x) = sin(5x) * exp(x/2)/(1+x^2)')
ylabel('y= f(x)')
xlabel('x')
T= toc;
fprintf('time= %.10f\n', T)