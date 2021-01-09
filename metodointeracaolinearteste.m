syms x
x = input('');
intinf = input('');
intsup = input('');
max = input('');
aux = 0;
x0 = intinf;
while (aux< max)
    
    xi = subs(x,x0);
    
         if  (x0 - xi ) == 0
        
            break
   
             else x0 = xi;
        end
end
  double(x0)