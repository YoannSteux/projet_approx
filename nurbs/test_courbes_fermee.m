clear;

disp("saisir les points de controle");
[Px,Py] = saisi_points();
P = [Px Px(1); Py Py(1)];
nb_P = length(Px)+1;

degre = 2;

T = vecteur_nodal(degre , nb_P);
%T = [0 1 2 3 4 ];

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

plot([Px Px(1)], [Py Py(1)]);
hold on;
plot(X,Y);
