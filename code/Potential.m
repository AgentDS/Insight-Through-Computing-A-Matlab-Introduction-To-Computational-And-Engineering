% P7_3_6  (b)
function P= Potential(A,i,j)
% 返回A(i,j)处的势能P
% P= A(i,j)*(N+E+S+W)
% 其中N,E,S,W分别为A(i,j)的相邻四格的状态
N= A(i,j+1);    S= A(i,j-1);
W= A(i-1,j);    E= A(i+1,j);

if  j==n
    E= A(i,1);
end

if  i==n
    S= A(1,j);
end

if  j==1
    W= A(i,n);
end

if  i==1
    N= A(n,j);
end


% 计算A(i,j)处的势能P= A(i,j)*(N+E+S+W)
P= A(i,j)*(N+E+S+W);

end
% Potential函数结束