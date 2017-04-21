L= -2;
R= 3;
N= 200;

x= linspace(L, R, N);
y= sin(5*x).*exp(x/2)./(1+x.^2);

plot(x,y,[L R],[0 0],':')
title('The function f(x) = sin(5x) * exp(x/2)/(1+x^2)')
ylabel('y= f(x)')
xlabel('x')