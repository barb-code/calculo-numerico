function [c] = lagrange33(x,y)

n = length(x);
n1 = 
L =zeros(n1,n1);

for i = 1 : n+1
    pr = 1;
    for j = 1 : n+1
      if j ~= i
           pr=conv(pr,poly(x(j)))/(x(k)-x(j));
      end
    end
    L(k,:) = V;
end
c=y*L;