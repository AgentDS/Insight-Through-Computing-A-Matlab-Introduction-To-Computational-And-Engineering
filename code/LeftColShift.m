% P8_1_8
function B= LeftColShift(A)
% A,B均为nxn的方阵
% B为A列依此左移得到的结果
[n n]= size(A);
B= zeros(n,n);
B(1:n,1:n-1)= A(1:n,2:n);
B(1:n,n)= A(1:n,1);


end
% LeftColShift函数结束