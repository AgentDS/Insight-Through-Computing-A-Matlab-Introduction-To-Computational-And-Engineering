function NewM = Refine(M)
% M��һ��mxn�����,����һ������
% NewM��һ��2mx2n�����,����һ������,����ʾЧ������
[m,n]= size(M);
NewM= Embed(M);
d= 2*n/5;
base= 7*d;
DrawDigit(-d,-d,base,NewM,1)


end
% Refine��������