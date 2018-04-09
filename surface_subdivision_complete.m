
function res = surface_subdivision_complete(grille,  degre , n_iter)
% subdviser sur les lignes
res_ligne = surface_subdivision_composante(grille,  degre , n_iter);
% subdiviser sur les colones
res_ligne_colone = surface_subdivision_composante(res_ligne',  degre , n_iter);
% remmettre dans le bons sens
res = res_ligne_colone';
end



function res = surface_subdivision_composante(grille,  degre , n_iter)
N = size(grille,1); %nombre de ligne
res = [];

%pour chaque ligne subdviser
for i=1 : N
    grille_i_new  = subdivise_ferme_unique(grille(i,:) ,degre, n_iter);
    res = [res ; grille_i_new];
end

end


function  X_new = subdivise_ferme_unique(X,degre, n_iter)
for iter=1:n_iter
    % doubler les points
    X_new = repelem(X,2);

    for k=1:degre
        % prendre le milieu de 2 points consecutifs
        X_sub = 0.5*X_new(1:end-1) + 0.5*X_new(2:end);
        X_new = [X_sub (0.5*X_new(1) + 0.5*X_new(end))];
    end
    X = X_new;
end
X_new = [X_new(end) X_new];
end

