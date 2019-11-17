%task 1.1
x = -10:0.2:10;
f1 = sin(x).*exp(x);
f2 = sin(x).*x.^2;
f3 = sin(x).*x;
plot(x,f1,x,f2,x,f3)
title('Графики')
legend({'f1(x)=sin(x).*exp(x)','f2(x)=sin(x).*x^2','f3(x)=sin(x).*x'})
hold on

%task 1.2
x = -10:0.2:10;
subplot(3,1,1);
f1 = sin(x).*exp(x);
plot(x,f1)
legend({'f1(x)=sin(x).*exp(x)'})
subplot(3,1,2);
f2 = sin(x).*x.^2;
plot(x,f2)
legend({'f2(x)=sin(x).*x^2'})
subplot(3,1,3);
f3 = sin(x).*x;
plot(x,f3)
legend({'f3(x)=sin(x).*x'})

%task2

%var a
x=-10:0.001:10;
for i=1:length(x)
    if (x(i)<0)
        f(i) = power(1+sqrt(x(i)),1/3);
    else
        f(i) = sin(x(i))^(2)+((1+x(i))/(1+exp(x(i))));
    end
end
subplot(2,1,2);
plot(x, f,'r');
title('График');
legend('power(1+sqrt(x),1/3).*(x<0)+(power(sin(x),2)+((1+x)./(1+exp(x)))).*(x>=0)','Location','BestOutside');
axis square;
grid on;
xlim([-10, 10]);
xlabel('X');
ylabel('Y');

%var b
x=-10:0.001:10;
y=power(1+sqrt(x),1/3).*(x<0)+(power(sin(x),2)+((1+x)./(1+exp(x)))).*(x>=0);
subplot(2,1,1);
plot(x, y,'m');
title('График');
legend('power(1+sqrt(x),1/3).*(x<0)+(power(sin(x),2)+((1+x)./(1+exp(x)))).*(x>=0)','Location','BestOutside');
axis square;
grid on;
xlim([-10, 10]);
xlabel('X');
ylabel('Y');