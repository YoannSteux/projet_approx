

figure(1)
subplot(2,2,1);
g = grille();


n_iter = 4;
degre = 3;


% surface grille base
X = g(:,:,1);
Y = g(:,:,2);
Z = g(:,:,3);

surf(X,Y,Z);
hold on;

% surface grille subdivisée
X_sub = surface_subdivision_complete(X, degre , n_iter);
Y_sub = surface_subdivision_complete(Y, degre , n_iter);
Z_sub = surface_subdivision_complete(Z, degre , n_iter);


subplot(2,2,2);
surf(X_sub, Y_sub, Z_sub);
hold on;



% tore
t = tore();
X_t = t(:,:,1);
Y_t = t(:,:,2);
Z_t = t(:,:,3);


subplot(2,2,3);
surf(X_t, Y_t, Z_t);
hold on;

X_t_s = surface_subdivision_complete(X_t, degre , n_iter);
Y_t_s = surface_subdivision_complete(Y_t, degre , n_iter);
Z_t_s = surface_subdivision_complete(Z_t, degre , n_iter);

subplot(2,2,4);
surf(X_t_s, Y_t_s, Z_t_s);
hold on;

