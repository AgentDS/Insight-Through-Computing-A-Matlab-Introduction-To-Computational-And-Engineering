% P10_1_6
function P = LinespaceP(Q1,Q2,n)
% Q1,Q2是点
% n是大于2的整数
% P是一个长度为n的点的结构数组
% P(1),P(2),P(3),...,P(n)等距离分布在Q1Q2线段上
% P(1)= Q1    P(n)= Q2
dx= (Q2.x-Q1.x)/(n-1);
dy= (Q2.y-Q1.y)/(n-1);

for  i= 0:n-1
    P(i+1)= MakePoint(Q1.x+i*dx,Q1.y+i*dy);
end  % for语句结束


end
% LinespaceP函数结束