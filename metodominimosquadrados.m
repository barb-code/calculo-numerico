x = [-1 
    -.7
    -.4
    -.1
    .2
    .5
    .8
    1];
k = [36.547
17.264 
8.155
3.852
1.820
0.860
0.406
0.246] ;
y = log(k);
n = length(x);
 
 
plot(x,y,'.');
 
A = [  x x.^0 ];
 
th = pinv(A)*y %inv(A'*A)*A'*y;

y_ap = A*th;

hold on
plot(x, y_ap,'r')
 
e  = y - y_ap;
E = (e'*e)/n ;
