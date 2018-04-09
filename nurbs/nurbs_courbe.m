function [x,y] = nurbs_courbe(t, T, P, poids , degre)

M = 0;
Nx = 0;
Ny = 0;


for i=1 : (length(P))
    Bik = B(i,degre,t, T);
    M = M + poids(i) * Bik;
    Nx = Nx + poids(i) * P(1,i) * Bik;
    Ny = Ny + poids(i) * P(2,i) * Bik;
    
end

x = Nx / M;
y = Ny / M;

end

