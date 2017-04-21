P= [.32   .17   .11   .46;
    .18   .43   .32   .33;
    .27   .22   .39   .14;
    .23   .18   .18   .07];
x= 1000000*ones(4,1);

clc
disp('     x(1)     x(2)     x(3)     x(4)   ')
disp('---------------------------------------')
disp(sprintf('%8.0f  ',x))
subplot(3,2,1)
bar(x)
for  t= 1:5
   x= Transition(P,x);
   subplot(3,2,t+1)
   bar(x)
   disp(sprintf('%8.0f  ',x))

end
