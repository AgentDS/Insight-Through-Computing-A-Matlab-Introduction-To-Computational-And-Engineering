% P10_1_5
function P = RandomPointSet(n,a,b,c,d)
% b>a    d>c
% 返回一个长度为n的结构数组
% 该数组是从顶点为(a,c),(b,c),(a,d),(b,d)的矩形中随机挑选的点
x= rand(n,1)*(b-a)+a;
y= rand(n,1)*(d-c)+c;
for  i= 1:n
    P(i)= MakePoint(x(i),y(i));
end  % for语句结束

end
% RandomPointSet函数结束