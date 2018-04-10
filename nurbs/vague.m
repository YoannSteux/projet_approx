function v = vague()
%VAGUE Summary of this function goes here
%   Detailed explanation goes here

[X,Y] = meshgrid(-2:.5:2); 

Z = X .* exp(-X.^2 - Y.^2);

v = zeros(size(X,1), size(Y,1),3);
v(:,:,1) = X;
v(:,:,2) = Y;
v(:,:,3) = Z;

end

