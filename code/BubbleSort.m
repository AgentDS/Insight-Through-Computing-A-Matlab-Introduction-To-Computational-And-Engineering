function [y, TotalC, TotalS]= BubbleSort(x)
% �Գ���Ϊn��������x����ð������
% yΪ�����ĳ���Ϊn�ĵ�������
% TotalCΪ�Ƚϵ��ܴ���
% TotalSΪ�������ܴ���
n= length(x);
TotalC= 0;    TotalS= 0;
k= 1;
while  (k==1 || S>0) && k<=n-1      % �� S==0 ʱ,˵�����������������,����������
    [x(k:n),C,S]= Bubble(x(k:n));
    k= k+1;
    TotalC= TotalC+C;
    TotalS= TotalS+S;
end  % while������

y= x;

end
% BubbleSort��������