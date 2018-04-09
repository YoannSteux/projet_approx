clear;

disp("saisir les points de controle");
[Px,Py] = saisi_points();
P = [Px ; Py];
nb_P = length(Px);

degre = 3;

T = vecteur_nodal(degre , nb_P);
poids = poids(nb_P);
prec =0.005;


X = [];
Y = [];
for t = 0 : prec : T(end)
    [x,y] = nurbs_courbe(t, T, P, poids , degre);
    X = [X x];
    Y = [Y y];
end

figure(1);
%axis([0 1 0 1]);

plot(Px, Py);
hold on;
plot(X,Y);


