A= randn(n);
winter= colormap('winter');    % winter����ʾ��������
hot= colormap('hot');          % hot����ʾ��������
p1= size(winter,1);  % p1���ڸ���
p2= size(hot,1);     % p2��������
MaxP= 0;     % �������
MinP= inf;   % ��С����
MaxN= -inf;  % �����
MinN= 0;     % ��С����

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






