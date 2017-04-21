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

[Q1,Q2]= MinStep(P);
plot([Q1.x Q2.x],[Q1.y Q2.y],'r')
d= GetDist(Q1,Q2);
ShowPointSet(P,'*k')
ShowPointSet([Q1 Q2],'or')
title(sprintf('MinStep= %5.3f',d),'Fontsize',14)
hold off