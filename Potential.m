% P7_3_6  (b)
function P= Potential(A,i,j)
% ����A(i,j)��������P
% P= A(i,j)*(N+E+S+W)
% ����N,E,S,W�ֱ�ΪA(i,j)�������ĸ��״̬
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


% ����A(i,j)��������P= A(i,j)*(N+E+S+W)
P= A(i,j)*(N+E+S+W);

end
% Potential��������