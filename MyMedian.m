% P8_2_9
function m= MyMedian(x)
% ʹ��sort(),ʵ��������median()���ܵĺ���
 n= length(x);
 k= n/2;
 x= sort(x);
 if  mod(n,2)==2
     m= ( x(k) + x(k+1) )/2;
 else
     m= x(k+1);
 end  % if������


end
% MyMedian��������