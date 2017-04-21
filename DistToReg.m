% M6_3_5
% ������������x,y�����Ķ���ε���̱߳�����߳��ı�ֵr
function r = DistToReg(x,y)

Short=Inf;
Long= 0;
n= length(x);
for  k= 1:n
    t= mod(k+1,n);
    if  k==(n-1)
        t= n;
    end
    lk= sqrt( (x(t)-x(k))^2 + (y(t)-y(k))^2 ) ;
    
    if  lk<Short
        Short= lk;
    end
    
    if  lk>Long
        Long= lk;
    end
    
end  % for����
r= Short/Long;

end 
% DistToReg��������