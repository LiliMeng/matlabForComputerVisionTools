% This function finds the optimal Rigid/Euclidean transform in 3D space
% It expects as input a Nx3 matrix of 3D points.
% It returns R, t


function T = rigid_transform_3D(A, B)

if nargin ~= 2
error('Missing parameters');
end


%centroid_A = mean(A);
%centroid_B = mean(B);
centroid_A = A;
centroid_B = B;


H = zeros(3,3);

for i=1:size(A,1)
H = H + ( A(i,:) -centroid_A )' * ( B(i,:)-centroid_B );

end

[U,S,V] = svd(H);

if det(V) < 0
V(:,3) = V(:,3) * -1
end

R = V*U';
C_A = eye(4,4);
C_B = eye(4,4);
R_new = eye(4,4);
C_A(1:3, 4) = -centroid_A';
R_new(1:3, 1:3) = R;
C_B(1:3, 4) = centroid_B;
T = C_B * R_new * C_A;
