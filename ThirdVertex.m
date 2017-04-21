% P10_1_7
% P1,P2��������ͬ�ĵ�
% QҲ��һ����,��P1,P2����һ���ȱ�������,Q��y����Ӧ�ô���P1��P2��y����
function Q = ThirdVertex(P1,P2)
tanP1P2= sym((P2.y-P1.y)/(P2.x-P1.x));  % P1P2ֱ��б��      
tanQP1= sym((tanP1P2+sqrt(3))/(1-sqrt(3)*tanP1P2));  % QP1ֱ��б��    
l= sym(sqrt((P2.y-P1.y)^2+(P2.x-P1.x)^2));  % �������α߳�
x= double(l/sqrt(tanQP1^2+1)+P1.x);
y= double(l*sqrt(tanQP1^2/(1+tanQP1^2))+P1.y);
Q= MakePoint(x,y);

end
% ThirdVertex��������