function MeshTriangle(x,y,L)
% x,y均为3x1的向量
% L为一个指定划分层数的正整数
% 假设已有hold on
if  L==0
    fill(x,y,'w','linewidth',1.5)
else
    a= [(x(1)+x(2))/2 (x(2)+x(3))/2 (x(3)+x(1))/2];
    b= [(y(1)+y(2))/2 (y(2)+y(3))/2 (y(3)+y(1))/2];
    fill(a,b,'r','linewidth',1.5)
    MeshTriangle([x(1) a(1) a(3)],[y(1) b(1) b(3)],L-1)
    MeshTriangle([x(2) a(2) a(1)],[y(2) b(2) b(1)],L-1)
    MeshTriangle([x(3) a(3) a(2)],[y(3) b(3) b(2)],L-1)
end  % if结束

end
% MeshTriangle函数结束