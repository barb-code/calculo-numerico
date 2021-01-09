disp('                                                               -M�TODO DE EULER-')
disp('                                                 |siga os passos a seguir para obter a solu��o|')
disp('Insira o ponto x(0):')
x0 = input('');
disp('Insira o ponto x(f):')
xf = input('');
disp ('Insira o valor de y no ponto x(0)')
y0 = input('');
disp('Insira o passo h:')
h = input('');
disp ('obs : para inserir uma fun��o no matlab devemos indicar o espa�o da fun��o.')
disp ('Ex: @(x,y,nespa�os) fun�aodesejada')
disp ('Seguindo as instru��es acima insira F(x)')
dy = input(''); 
aux = 1;
x = [] ; y = [] ; interacoes = [];
while x0 < xf
    yn = y0 + h*(dy(x0,y0));
    y(1+end,1) = yn ;
    y0 = yn ;
    x0 = x0 + h;
    x(1+end,1) = x0;
    aux = aux +1;
    interacoes(1+end,1) = aux;
end
 
table( interacoes ,x , y)

plot(x,y)