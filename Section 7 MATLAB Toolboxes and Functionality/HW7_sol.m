syms rho u v p gamma e c


U = [rho; rho*u; rho*v; (p/(gamma-1))+0.5*rho*(u^2+v^2)];
V = [rho; u; v; p];
F = [rho*u; rho*u^2 + p; rho*u*v; ((p/(gamma-1))+0.5*rho*(u^2+v^2)+p)*u];
G = [rho*v; rho*v*u; rho*v^2 + p; ((p/(gamma-1))+0.5*rho*(u^2+v^2)+p)*v];
%p = (gamma-1)*(e - rho*(u^2 + v^2)/2);
%e = (p/(gamma-1))+0.5*rho*(u^2+v^2);

A = jacobian(U,V)\jacobian(F,V);
B = jacobian(U,V)\jacobian(G,V);

A = simplify(A);
B = simplify(B);


newA = subs(A,p*gamma,rho*c^2);
newB = subs(B,p*gamma,rho*c^2);

[V1, D1] = eig(newA);
[V2, D2] = eig(newB);
