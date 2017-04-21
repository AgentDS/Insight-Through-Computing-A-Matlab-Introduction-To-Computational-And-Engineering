A= randn(n);
winter= colormap('winter');    % winter来显示负数分量
hot= colormap('hot');          % hot来显示正数分量
p1= size(winter,1);  % p1用于负数
p2= size(hot,1);     % p2用于正数
MaxP= 0;     % 最大正数
MinP= inf;   % 最小正数
MaxN= -inf;  % 最大负数
MinN= 0;     % 最小负数

for  i= 1:n              
    N= find(A(:,i)<0);
    P= find(A(:,i)>=0);
    maxPi= max(A(P,i));
    minPi= min(A(P,i));
    maxNi= max(A(N,i));
    minNi= min(A(N,i));
    
    if  MaxP<maxPi
        MaxP= maxPi;
    end
    
    if  MinP>minPi
        MinP= minPi;
    end
    
    if  MaxN<maxNi
        MaxN= maxNi;
    end
    
    if  MinN>minNi
        MinN= minNi;
    end
    
end

if  MinP==inf
    MinP= 0;
end

if  MaxN= -inf
    MaxN= 0;
end

h1= (MaxN-MinN)/p1;
h2= (MaxP-MinP)/p2;






