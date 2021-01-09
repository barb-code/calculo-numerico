disp('                                                            -Resolução de EDO de grau 1-  ')
disp ('Insira X(0):') 
x0 = input('');
format long
disp ('Insira X(F):') 
xf = input('');
disp ('Insira Y(X(0)):') 
y0 = input('');
disp ('Insira h:') 
h = input(''); 
dy = @(x,y) (2*y)/(x+1) +(x+1)^3 ;
aux = 1;
r = []; k = []; l = [];
while x0 < xf + h
    yn= (y0 + (h/2)*(dy(x0,y0)+dy(x0+h,y0 + h*dy(x0,y0)))) ;
    k(end+1,1) = x0 ;
    l(end+1,1) = aux ;  
    r(end+1,1) = yn ;
    x0 = x0 + h;
    y0 = yn ;
    aux = aux + 1 ;
    
end
INTERACOES = l ; Xp = k ; Yp = r ; 

table(INTERACOES,Xp,Yp)
