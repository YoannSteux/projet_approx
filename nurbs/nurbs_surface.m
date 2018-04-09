function [x,y,z] = nurbs_surface(u, v, Tu, Tv, P, poids , degre_u, degre_v)

M = 0;
Nx = 0;
Ny = 0;
Nz = 0;


for i=1 : (length(Tu) - degre_u -1)
    for j=1 : (length(Tv) - degre_v -1)
        Bik_u = B(i,degre_u,u, Tu);
        Bjk_v = B(j,degre_v,v, Tv);
        M = M + poids(i,j) * Bik_u * Bjk_v;
        Nx = Nx + poids(i,j) * P(i,j,1) * Bik_u * Bjk_v;
        Ny = Ny + poids(i,j) * P(i,j,2) *  Bik_u * Bjk_v;
        Nz = Nz + poids(i,j) * P(i,j,3) *  Bik_u * Bjk_v;
    end
end

x = Nx / M;
y = Ny / M;
z = Nz / M;

end
