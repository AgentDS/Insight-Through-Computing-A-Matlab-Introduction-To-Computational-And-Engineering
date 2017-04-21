clc
d= input('Enter d: ');

tic   %开始计时
q=1;
p= 3*q;
MaxErr= power(10, -d);      %Max为10^(-d),为结束程序的允许最大误差
errRound= p/q;

while  errRound > MaxErr     %若计算所得误差小于MaxErr则结束循环
    q= q+1;
    pRound= round(q*pi);       %对于每个q，只有当round(q*pi)能最接近于所需要的p，故只检查round()
    fprintf('p= %5d,  q= %5d\n', pRound, q)
    errRound= abs(pRound/q-pi);
end
pMin= pRound;
qMin= q;
MyPi= pMin/qMin;
T= toc;      %计时结束
clc
fprintf('d     = %1d\npMin = %1d\nqMin = %1d\n', d, pMin, qMin)
fprintf('MyPi  = %17.15f\n', MyPi)
fprintf('pi      = %17.15f\n', pi)
fprintf('Err    = %17.15f\n\n', errRound)
fprintf('the P3_1_5.m runs for %.15fs\n', T)