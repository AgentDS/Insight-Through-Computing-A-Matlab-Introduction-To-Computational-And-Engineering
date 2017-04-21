function y = Transition(P,x)
% P为nxn的概率转移矩阵
% x为nx1的列向量
% y为nx1的列向量(马尔可夫链执行了一步)

% 初始化
[n,n]= size(P);
y= zeros(n,1);
for  i= 1:n
    for  j= 1:n
        y(i)= y(i)+ P(i,j)*x(j);
    end  %第二层for结束
end % 第一层for结束



end
% Transition函数结束