function A = MakeColorMap(B,q)
% B为px3的色彩映射
% q是一个长度为(p-1)的非负整数向量
% A是一个通过堆叠子色彩映射构成的大色彩映射
% 每个子色彩映射通过 InterpColors(B(k,:),B(k+1,:),q(k))产生,k= 1:(p-1)
p= size(B,1);
A= [];
for  k= 1:(p-1)
    D= InterpColors(B(k,:),B(k+1,:),q(k));
    if  k==1
        A= [A;D];
    else
        A= [A;D(2:size(D,1),:)];
    end
end

end
% MakeColorMap函数结束