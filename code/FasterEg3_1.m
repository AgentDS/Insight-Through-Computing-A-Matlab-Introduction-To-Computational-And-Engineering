clc
M= input('Enter M: ');

tic   %��ʼ��ʱ
pBest= 1;
qBest= 1;
err_pq= abs(pi-pBest/qBest);

for  q= 1: ceil(M/pi)
    pMinus= floor(q*pi);    errMinus= abs(pMinus/q-pi);
    pPlus  = ceil(q*pi);      errPlus  = abs(pPlus/q-pi);
   % pRound= round(q*pi);   errRound= abs(pRound/q-pi);   
   %��ʵֻ���round()�������ͬʱ���floor()��ceil()
    
    if  errMinus < errPlus
        p0= pMinus;   e0= errMinus;
    else
        p0= pPlus;     e0= errPlus;
    end
    
    if  e0 < err_pq
        pBest= p0;    qBest= q;   err_pq= e0;
    end
end

MyPi= pBest/qBest;
T= toc;      %��ʱ����
clc
fprintf('M     = %1d\npBest = %1d\nqBest = %1d\n', M, pBest, qBest)
fprintf('MyPi  = %17.15f\n', MyPi)
fprintf('pi      = %17.15f\n', pi)
fprintf('err_pq= %17.15f\n\n', err_pq)
fprintf('the FasterEg3_1.m runs for %.15fs\n', T)