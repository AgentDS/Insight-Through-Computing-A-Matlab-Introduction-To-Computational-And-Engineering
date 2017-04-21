close all
figure
axis([-.2 1.2 -.2 1.2])
hold on

% 创建随机点集P
n= 100;
x= rand(n,1);
y= rand(n,1);
for  i= 1:n
    P(i)= MakePoint(x(i),y(i));
end  % for语句结束


ShowPointSet(P,'*k')
ShowCenter(P,'or')
hold off