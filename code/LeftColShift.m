% P8_1_8
function B= LeftColShift(A)
% A,B��Ϊnxn�ķ���
% BΪA���������Ƶõ��Ľ��
[n n]= size(A);
B= zeros(n,n);
B(1:n,1:n-1)= A(1:n,2:n);
B(1:n,n)= A(1:n,1);


end
% LeftColShift��������