clear;


k = 1;
degre = k;
nb_P = 4 ;
T = vecteur_nodal(degre, nb_P);
prec = 0.01;

for i = 0 : nb_P-1
    X = [];
    Y = [];
    for t = 0:prec : T(end)
        b = B(i+1,k,t, T);
        X = [X t];
        Y = [Y b];
    end
    figure(2)
    plot(X,Y);
    hold on;
end