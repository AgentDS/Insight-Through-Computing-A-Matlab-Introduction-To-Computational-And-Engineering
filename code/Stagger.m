% P8_1_9
function B= Stagger(A)
% A,B��Ϊmxn�ľ���
% B�ǽ�A�ĵ�k����������k�εõ�����,k= 1,2,3,...,m
[m n]= size(A); 
B= zeros(m,n);
for  k= 1:m
    B(k,:)= MultipleLeftShift(A(k,:),k);
end   % for������




end
% Stagger��������