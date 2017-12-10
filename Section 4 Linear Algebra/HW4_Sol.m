%Algorithm 1
A = get_rgb('palm.png');
[U,S,V] = svd(A,0);
Ak = U(:,1:30)*S(1:30,1:30)*V(:,1:30)';  %must be k<mn/(m+n+1) for compression
plot_image_rgb(Ak,gca);

p_vec = [5, 10, 15, 20, 25, 50];
q_vec = [1, 5, 10];
p = p_vec(1, end); q = q_vec(1, 1);


%Algorithm 2
W = rand(480,p);
Y=((A*A')^q)*(A*W);
[Q, R] = qr(Y,0);
B = Q'*A;
[U_til,S,V] =svd(B);
L=S.^2;
X=diag(L);
i=1;
s=0;
while i<=50
    s = X(i)+s;
    i=i+1;
end

v_1= 1 - X(1)/s



