L= -2;
R= 3;
N= 200;

c= (2*L + R)/2;
d= (L + 2*R)/2;

x1= linspace(L, c, N*(c - L)/(R - L));
y1= sin(5*x1).*exp(x1/2)./(1+x1.^2);
plot(x1,y1,'r--', [L R],[0 0])

hold on

x2= linspace(c, d, N*(d - c)/(R - L));
y2= sin(5*x2).*exp(x2/2)./(1+x2.^2);
plot(x2,y2,'k')


x3= linspace(d, R, N*(R - d)/(R - L));
y3= sin(5*x3).*exp(x3/2)./(1+x3.^2);
plot(x3,y3,'r--')

title('The function f(x) = sin(5x) * exp(x/2)/(1+x^2)')
ylabel('y= f(x)')
xlabel('x')