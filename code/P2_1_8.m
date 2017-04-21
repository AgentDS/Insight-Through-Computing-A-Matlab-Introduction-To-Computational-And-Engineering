%P2_1_8
n= 100;
Harmonic= 0;       %调和数列之和

for  k=1 : n
    Harmonic= Harmonic+1/k;
    E_k= Harmonic-log(k);
    fprintf('when k= %d,  E_k= %20.18f\n', k, E_k)
end


