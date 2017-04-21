clc
d= input('Enter d: ');

tic   %��ʼ��ʱ
q=1;
p= 3*q;
MaxErr= power(10, -d);      %MaxΪ10^(-d),Ϊ�������������������
errRound= p/q;

while  errRound > MaxErr     %�������������С��MaxErr�����ѭ��
    q= q+1;
    pRound= round(q*pi);       %����ÿ��q��ֻ�е�round(q*pi)����ӽ�������Ҫ��p����ֻ���round()
    fprintf('p= %5d,  q= %5d\n', pRound, q)
    errRound= abs(pRound/q-pi);
end
pMin= pRound;
qMin= q;
MyPi= pMin/qMin;
T= toc;      %��ʱ����
clc
fprintf('d     = %1d\npMin = %1d\nqMin = %1d\n', d, pMin, qMin)
fprintf('MyPi  = %17.15f\n', MyPi)
fprintf('pi      = %17.15f\n', pi)
fprintf('Err    = %17.15f\n\n', errRound)
fprintf('the P3_1_5.m runs for %.15fs\n', T)