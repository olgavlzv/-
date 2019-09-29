a=-2.5;
b=1.35;
i=3;
c=-0.75;
x=2.75;
y=1.5*power(a-b, 2)/(abs(a-b)*c)+i/5+10*power(abs(a-b),1/3)-(a+power(x,2))*cos(7)/(i*power(x,2)+power(a,2)*b*c)
p=[a,b,i,c,x,y];
k=[1,1,1,1,1,1];
u=p-k
disp(u(2))
u(1)=0;
u(2)=0;
u(3)=0;
max(u')