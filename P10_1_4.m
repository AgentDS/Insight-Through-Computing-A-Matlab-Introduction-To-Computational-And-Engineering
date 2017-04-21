% 创建随机点集P
n= 100;
x= rand(n,1);
y= rand(n,1);
for  i= 1:n
    P(i)= MakePoint(x(i),y(i));
end  % for语句结束
length= PolyLength(P);
fprintf('length: %.6f\n',length)
disp(['length: ',num2str(length)])