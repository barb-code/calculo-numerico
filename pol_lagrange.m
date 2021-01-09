function [c]= pol_lagrange(x,y)

n1=length(x);
L =zeros(n1,n1);
n =n1-1;
for k=1:n+1
    V=1;
    for j=1:n+1
        if k ~= j
            V=conv(V,poly(x(j)))/(x(k)-x(j));
        end
    end
    L(k,:) = V;
end

c=y*L;