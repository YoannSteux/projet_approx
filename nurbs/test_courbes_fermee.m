clear;

disp("saisir les points de controle");
[Px,Py] = saisi_points();

degre = 3;


P =  [[Px(end-degre+1:end) Px Px(1:degre)]; [Py(end-degre+1:end) Py Py(1:degre)]];
nb_P = size(P,2);
n = length(Px);

%T = vecteur_nodal(degre , length(Px));
%T= [T T(1:degre-1)];

% T periodique
T = [1:(n+3*degre+1 )] - degre;


p = poids(nb_P);
prec =0.005;


X = [];
Y = [];
for t = T(degre+1) : prec : T(end-degre)
    [x,y] = nurbs_courbe(t, T, P, p , degre)
    X = [X x];
    Y = [Y y];
end

figure(1);
%axis([0 1 0 1]);

plot([Px Px(1)], [Py Py(1)]);
hold on;
plot(X,Y);

