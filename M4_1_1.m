L= -2;
R= 3;
N1= 200;
N2= 400;
N3= 100;

x1= linspace(L, R, N1);        y1= sin(5*x1).*exp(x1/2)./(1+x1.^2);
x2= linspace(L, R, N2);        y2= sin(5*x2).*exp(x2/2)./(1+x2.^2);
x3= linspace(L, R, N3);        y3= sin(5*x3).*exp(x3/2)./(1+x3.^2);

figure
plot(x1,y1, 'k', [L R],[0 0])
title('The function f(x) = sin(5x) * exp(x/2)/(1+x^2); N = 200')
ylabel('y= f(x)')
xlabel('x')

figure
plot(x2,y2,'r', [L R],[0 0],':r')
title('The function f(x) = sin(5x) * exp(x/2)/(1+x^2); N = 400')
ylabel('y= f(x)')
xlabel('x')

figure
plot(x3,y3,'b', [L R],[0 0],':r')
title('The function f(x) = sin(5x) * exp(x/2)/(1+x^2); N = 100')
ylabel('y= f(x)')
xlabel('x')