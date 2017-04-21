%clc
n= 90000000;                   %�ٶ�ÿ����������n��
x= ceil(6*rand(n,1));     %��һ�����ӵ�n�ν��
y= ceil(6*rand(n,1));     %�ڶ������ӵ�n�ν��
z= ceil(6*rand(n,1));     %���������ӵ�n�ν��

sDiff= ( (x~=y) & (y~=z) );  %��������ȫ������ȵ��ж�����
Equal2= n-sum(sDiff);    %������������������ȵĴ�����n��ȫ������ȵĴ���
RateEqual2= Equal2/n;    %������������������ȵĸ���

sMid= ( (z<=x & z>=y) | (z>=x & z<=y) );   %���������ӵ���ǡ����ǰ����֮����ж�����
Mid= sum(sMid);                            %���������ӵ���ǡ����ǰ����֮��Ĵ���
RateMid= Mid/n;                            %���������ӵ���ǡ����ǰ����֮��ĸ���

%��ӡ���
fprintf('\nn= %d\n',n)
fprintf('RateEqual2= %.5f\n',RateEqual2)
fprintf('RateMid  = %.5f\n',RateMid)


