%P2_1_5

n= input('Enter n: ');
R_n= 1;
T_n= 1;
U_n= 1;
t= 1;

for  k= 2 : n
    t= -t;
    R_n= R_n+t/(2*k-1);     %n->��ʱ��R_n= ��/4     
    T_n= T_n+1/k^2;         %n->��ʱ��T_n= ��^2/6   ��
    U_n= U_n+1/k^4;     %n->��ʱ��U_n= ��^4/90
end

rho_n= 4*R_n;
tao_n= sqrt(6*T_n);
mu_n= nthroot(90*U_n,4);

clc
fprintf('when n= %d\n', n)
fprintf('abs( �� - rho_n )= %16.14f\n', abs(pi-rho_n))
fprintf('abs( �� - tao_n )= %16.14f\n', abs(pi-tao_n))
fprintf('abs( �� - mu_n )= %16.14f\n', abs(pi-mu_n))

