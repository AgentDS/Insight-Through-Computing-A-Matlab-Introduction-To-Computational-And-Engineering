% P10_1_7
% P1,P2是两个不同的点
% Q也是一个点,和P1,P2构成一个等边三角形,Q的y坐标应该大于P1和P2的y坐标
function Q = ThirdVertex(P1,P2)
tanP1P2= sym((P2.y-P1.y)/(P2.x-P1.x));  % P1P2直线斜率      
tanQP1= sym((tanP1P2+sqrt(3))/(1-sqrt(3)*tanP1P2));  % QP1直线斜率    
l= sym(sqrt((P2.y-P1.y)^2+(P2.x-P1.x)^2));  % 正三角形边长
x= double(l/sqrt(tanQP1^2+1)+P1.x);
y= double(l*sqrt(tanQP1^2/(1+tanQP1^2))+P1.y);
Q= MakePoint(x,y);

end
% ThirdVertex函数结束