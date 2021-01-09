syms x
f = input('');
intinf = input('');
intsup = input('');
erro = input('');
max = input('');
df = diff(f);
df2 = diff(df);
ezplot (f) ; hold on ; ezplot (df); hold on ; ezplot (df2); grid on 
df2inf = subs(df2,intinf);
finf = subs(f,intinf);
fsup = subs(f,intsup);
df2sup = subs(df2,intsup);
aux = 0;

if sign(finf) == sign(df2inf)
    xc = abs(intinf);
    x0 = abs(intsup);
    fprintf ('\nDe acordo com o intervalo os pontos são: X(c) = %d e X(0) = %d',intinf,intsup)
    else
    xc = abs(intsup);
    x0 = abs(intinf);
     fprintf ('\nDe acordo com o intervalo os pontos são: X(c) = %d e X(0) = %d',intsup,intinf)
end



while  ( aux < max )
    aux = aux +1;
    
    x = x0 - ((subs(f,x0)/(subs(f,x0) - subs(f,xc)))*(x0 - xc));
    
    if (x0 - x ) == 0
        
        break
   
    else x0 = x;
    
    end


end
    
 fprintf ('\n A raiz é %1.5f depois de %d interações',double(x0),aux)
    
    