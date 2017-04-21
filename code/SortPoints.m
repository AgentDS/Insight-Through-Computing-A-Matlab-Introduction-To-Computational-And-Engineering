% P10_1_8
% 按照到原点的距离,从大到小排列结构数组P中的点
% Q是P的一个排列

function Q = SortPoints(P)

Or= MakePoint(0,0);  % 创建原点Or
for  i= 1:length(P)  % 初始化点集Q,计算原点集到原点的距离    
    Q(i)= MakePoint(0,0);
    DistOriginP(i)= GetDist(Or,P(i)); 
end  % for结束

[Dist,I]= sort(DistOriginP,'descend');  % 对距离排序
for  i= 1:length(P)
    Q(i)= P(I(i));
end  % for结束


end
%  SortPoints函数结束









end