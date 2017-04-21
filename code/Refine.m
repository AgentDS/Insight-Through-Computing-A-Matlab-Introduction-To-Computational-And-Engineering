function NewM = Refine(M)
% M是一个mxn点矩阵,代表一个数字
% NewM是一个2mx2n点矩阵,代表一个数字,但显示效果更好
[m,n]= size(M);
NewM= Embed(M);
d= 2*n/5;
base= 7*d;
DrawDigit(-d,-d,base,NewM,1)


end
% Refine函数结束