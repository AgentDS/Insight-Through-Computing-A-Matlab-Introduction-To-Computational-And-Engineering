% P8_2_9
function m= MyMedian(x)
% 使用sort(),实现类似于median()功能的函数
 n= length(x);
 k= n/2;
 x= sort(x);
 if  mod(n,2)==2
     m= ( x(k) + x(k+1) )/2;
 else
     m= x(k+1);
 end  % if语句结束


end
% MyMedian函数结束