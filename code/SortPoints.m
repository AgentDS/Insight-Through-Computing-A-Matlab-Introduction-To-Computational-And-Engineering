% P10_1_8
% ���յ�ԭ��ľ���,�Ӵ�С���нṹ����P�еĵ�
% Q��P��һ������

function Q = SortPoints(P)

Or= MakePoint(0,0);  % ����ԭ��Or
for  i= 1:length(P)  % ��ʼ���㼯Q,����ԭ�㼯��ԭ��ľ���    
    Q(i)= MakePoint(0,0);
    DistOriginP(i)= GetDist(Or,P(i)); 
end  % for����

[Dist,I]= sort(DistOriginP,'descend');  % �Ծ�������
for  i= 1:length(P)
    Q(i)= P(I(i));
end  % for����


end
%  SortPoints��������









end