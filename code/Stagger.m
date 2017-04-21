% P8_1_9
function B= Stagger(A)
% A,B均为mxn的矩阵
% B是将A的第k行依此左移k次得到矩阵,k= 1,2,3,...,m
[m n]= size(A); 
B= zeros(m,n);
for  k= 1:m
    B(k,:)= MultipleLeftShift(A(k,:),k);
end   % for语句结束




end
% Stagger函数结束