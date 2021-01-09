function [c]=interlagran(x,y)
x = [1.0 1.3 1.6 1.9 2.2 ];
y = [ 0.765197 0.6200860 0.4554022 0.2818186 0.1103623];
n1=length(x);
n=n1-1;
L=zeros(n1,n1);
for k=1:n+1
    V=1;
    for j=1:n+1
        if k~=j;
            V=conv(V,poly(x(j)))/(x(k)-x(j));
        end
    end
    L(k,:)=V;
end
c = y*L;
