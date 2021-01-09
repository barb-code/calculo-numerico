disp ('                                      Método de Newton')
syms x

disp ('Insira a função:');
f = input ('');
df = diff(f) ;
df2 = diff(df);
ezplot (f) ; hold on ; ezplot(df); hold on ; ezplot(df2) ; grid on 
intinf = input('');
intsup = input('');
erro = input('');
max = input('');
aux = 0;
finf = subs(f,intinf);
fsup = subs(f,intsup);
dfinf = subs(df,intinf);
dfsup = subs(df,intsup);

df2inf = subs(df2,intinf);
df2sup = subs(df2,intsup);
x0 = 0;
if sign(fsup) == sign(dfsup) == sign(finf) == sign(dfinf)
    disp ('F(x0).df2(F(X0)>0')
end

if finf >0
    x0 = abs(intinf)
    fprintf ('\n X(0) é o ponto %d.',intinf)
end

if fsup>0
    x0 = abs(intsup)
    fprintf ('\n X(0) é o ponto %d.',intsup)
end




while aux < max
    
    aux = aux + 1;
    
    x = x0 - (subs(f,x0)/subs(df,x0));
  
    if (x0 - x ) == 0
        
        break
   
    else x0 = x;
    
    end
end

fprintf('\n A raiz é %1.5f .', x0)
