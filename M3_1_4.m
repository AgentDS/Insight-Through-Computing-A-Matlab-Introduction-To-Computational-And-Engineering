clc
M= input('Enter M: ');

tic   %开始计时
pBest= 1;
qBest= 1;
err_pq= abs(pi-pBest/qBest);
fprintf('      p          q            |p/q-pi|\n')
for  q= 1: ceil(M/pi)
    pMinus= floor(q*pi);    errMinus= abs(pMinus/q-pi);
    pPlus  = ceil(q*pi);      errPlus  = abs(pPlus/q-pi);
   % pRound= round(q*pi);   errRound= abs(pRound/q-pi);   
   %其实只检查round()可以替代同时检查floor()和ceil()
    
    if  errMinus < errPlus
        p0= pMinus;   e0= errMinus;
    else
        p0= pPlus;     e0= errPlus;
    end
    
    if  e0 < err_pq
        pBest= p0;    qBest= q;   err_pq= e0;
        
        fprintf('     %-4d        %-4d         %-10.8f\n', pBest, qBest, err_pq)
    end
end

MyPi= pBest/qBest;
T= toc;      %计时结束

fprintf('\nM     = %1d\npBest = %1d\nqBest = %1d\n', M, pBest, qBest)
fprintf('MyPi  = %17.15f\n', MyPi)
fprintf('pi      = %17.15f\n', pi)
fprintf('err_pq= %17.15f\n\n', err_pq)
fprintf('the M3_1_4.m runs for %.15fs\n', T)