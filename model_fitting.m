% http://www.mathworks.com/help/optim/ug/lsqnonlin.html

rng default % for reproducibility
d = linspace(0,3,50);
y = exp(-1.3*d) + 0.1*randn(size(d));
fun = @(r)exp(-d*r)-y;
x0 = 5;
x = lsqnonlin(fun,x0)
plot(d,y,'ko',d,exp(-x*d),'b-')
legend('Data','Best fit')
xlabel('t')
ylabel('exp(-tx)')
