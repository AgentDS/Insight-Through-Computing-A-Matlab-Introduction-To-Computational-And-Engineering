% M6_3_5
% 返回由列向量x,y决定的多边形的最短边长与最长边长的比值r
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
    
end  % for结束
r= Short/Long;

end 
% DistToReg函数结束