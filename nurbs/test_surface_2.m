clear;

P = sph2();
[n1,n2,n3] = size(P);



degre_u = 3;
degre_v = 3;

Tu = vecteur_nodal(degre_u , n1);
Tv = vecteur_nodal(degre_v , n2);
poids = poids_3D(n1,n2);
prec = 0.08;

figure(1);
axis([0 1 0 1]);
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
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%   vague   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% 
% P = vague();
% [n1,n2,n3] = size(P);
% 
% 
% 
% degre_u = 3;
% degre_v = 3;
% 
% Tu = vecteur_nodal(degre_u , n1);
% Tv = vecteur_nodal(degre_v , n2);
% poids = poids_3D(n1,n2);
% prec = 0.08;
% 
% figure(1);
% axis([0 1 0 1]);
% subplot(2,2,3);
% surf(P(:,:,1), P(:,:,2),P(:,:,3));
% 
% X = [];
% Y = [];
% Z = [];
% Xf = [];
% Yf = [];
% Zf = [];
% for u = 0 : prec : Tu(end)
%     u
%     for v = 0 : prec : Tv(end)
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
% hold on;

