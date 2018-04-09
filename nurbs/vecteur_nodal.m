function T = vecteur_nodal(degre , nb_P)


T = zeros(1,degre);

for i = 1: (nb_P +1 -degre)
   T = [T  i]; 
end
T = [T  (i+1)*ones(1,degre)];

end