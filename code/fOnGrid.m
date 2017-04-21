function fVals = fOnGrid(x,y,f)
% x为nx1的列向量
% y为mx1的列向量
% f是一个定义了两个量进行函数运算的函数句柄
% fVals是一个mxn的矩阵, 且 fVals(i,j)= f(x(j),y(i))
n= length(x);    m= length(y);
fVals= zeros(m,n);

for  j= 1:n
    for  i= 1:m
        fVals(i,j)= f(x(j),y(i));
    end % 第二层for结束
    
end  % 第一层for结束

end
% fOnGrid函数结束