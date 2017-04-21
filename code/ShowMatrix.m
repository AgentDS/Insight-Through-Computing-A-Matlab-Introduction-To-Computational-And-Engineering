function ShowMatrix(A,C)
% A为mxn的矩阵,且每个元素不全相同
% C是一个px3的颜色映射
% 将矩阵A用mxn个有色砖块显示
[m,n]= size(A);
p= size(C,1);
A_min= min(min(A));
A_max= max(max(A));
h= (A_max-A_min)/p;

figure
axis ij off equal
hold on
for  i= 1:m
    for  j= 1:n
        k= max(ceil((A(i,j)-A_min)/h),1);
        c= C(k,:);
        fill([j j+1 j+1 j],[i i i+1 i+1],c)
    end
end
hold off

end
% ShowMatrix函数结束