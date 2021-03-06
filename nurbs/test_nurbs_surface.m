clear;

P = grille();
[n1,n2,n3] = size(P);



degre_u = 3;
degre_v = 3;

Tu = vecteur_nodal(degre_u , n1);
Tv = vecteur_nodal(degre_v , n2);
poids = poids_3D(n1,n2);
prec = 0.08;

figure(1);
%axis([0 1 0 1]);
subplot(2,2,1);
surf(P(:,:,1), P(:,:,2),P(:,:,3));

X = [];
Y = [];
Z = [];
Xf = [];
Yf = [];
Zf = [];
for u = 0 : prec : Tu(end)
    u
    for v = 0 : prec : Tv(end)
        v
        [x,y,z] = nurbs_surface(u, v, Tu, Tv, P, poids , degre_u, degre_v);
        X = [X x];
        Y = [Y y];
        Z = [Z z];
    end
    Xf = [Xf ; X];
    Yf = [Yf ; Y];
    Zf = [Zf ; Z];
    X = [];
    Y = [];
    Z = [];
    
end


hold on;
subplot(2,2,2);
surf(Xf,Yf,Zf);
hold on;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%   vague   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


P = vague();
[n1,n2,n3] = size(P);



degre_u = 3;
degre_v = 3;

Tu = vecteur_nodal(degre_u , n1);
Tv = vecteur_nodal(degre_v , n2);
poids = poids_3D(n1,n2);
prec = 0.08;

figure(1);
%axis([0 1 0 1]);
subplot(2,2,3);
surf(P(:,:,1), P(:,:,2),P(:,:,3));

X = [];
Y = [];
Z = [];
Xf = [];
Yf = [];
Zf = [];
for u = 0 : prec : Tu(end)
    u
    for v = 0 : prec : Tv(end)
        v
        [x,y,z] = nurbs_surface(u, v, Tu, Tv, P, poids , degre_u, degre_v);
        X = [X x];
        Y = [Y y];
        Z = [Z z];
    end
    Xf = [Xf ; X];
    Yf = [Yf ; Y];
    Zf = [Zf ; Z];
    X = [];
    Y = [];
    Z = [];
    
end


hold on;
subplot(2,2,4);
surf(Xf,Yf,Zf);
hold on;

% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%   tore    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% degre = 3
% 
% 
% P = tore();
% 
% X = P(:,:,1);
% Y = P(:,:,2);
% Z = P(:,:,3);
% n = length(X);
% % ajout des bords pour avoir une surface fermée
% % lignes
% X = [X(end-degre+1:end,:) ;X ;X(1:degre,:)];
% Y = [Y(end-degre+1:end,:) ; Y ; Y(1:degre,:)];
% Z = [Z(end-degre+1:end,:) ; Z ; Z(1:degre,:)];
% % colones
% X = [X(:,end-degre+1:end) X X(:,1:degre)];
% Y = [Y(:,end-degre+1:end) Y Y(:,1:degre)];
% Z = [Z(:,end-degre+1:end) Z Z(:,1:degre)];
% 
% 
% % modification de P
% P = zeros(size(X,1), size(X,2), 3);
% P(:,:,1) = X;
% P(:,:,2) = Y;
% P(:,:,3) = Z;
% 
% [n1,n2,n3] = size(P);
% 
% degre_u = degre;
% degre_v = degre;
% 
% 
% %Tu = vecteur_nodal(degre_u , n1);
% %Tv = vecteur_nodal(degre_v , n2);
% Tu = [1:(n+3*degre_u+1 )] - degre_u;
% Tv = [1:(n+3*degre_v+1 )] - degre_v;
% 
% poids = poids_3D(n1,n2);
% prec = 0.2;
% 
% figure(1);
% %axis([0 1 0 1]);
% subplot(2,2,3);
% surf(P(:,:,1), P(:,:,2),P(:,:,3));
% 
% X = [];
% Y = [];
% Z = [];
% Xf = [];
% Yf = [];
% Zf = [];
% for u = Tu(degre+1) : prec : Tu(end-degre)
%     u
%     for v = Tv(degre+1) : prec : Tv(end-degre)
%         v
%         [x,y,z] = nurbs_surface(u, v, Tu, Tv, P, poids , degre_u, degre_v);
%         X = [X x];
%         Y = [Y y];
%         Z = [Z z];
%     end
%     Xf = [Xf ; X];
%     Yf = [Yf ; Y];
%     Zf = [Zf ; Z];
%     X = [];
%     Y = [];
%     Z = [];
%     
% end
% 
% 
% hold on;
% subplot(2,2,4);
% surf(Xf,Yf,Zf);
