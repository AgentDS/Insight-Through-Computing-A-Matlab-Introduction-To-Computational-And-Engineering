% P10_1_6
function P = LinespaceP(Q1,Q2,n)
% Q1,Q2�ǵ�
% n�Ǵ���2������
% P��һ������Ϊn�ĵ�Ľṹ����
% P(1),P(2),P(3),...,P(n)�Ⱦ���ֲ���Q1Q2�߶���
% P(1)= Q1    P(n)= Q2
dx= (Q2.x-Q1.x)/(n-1);
dy= (Q2.y-Q1.y)/(n-1);

for  i= 0:n-1
    P(i+1)= MakePoint(Q1.x+i*dx,Q1.y+i*dy);
end  % for������


end
% LinespaceP��������