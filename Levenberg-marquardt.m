xdata = ...
 [0.9 1.5 13.8 19.8 24.1 28.2 35.2 60.3 74.6 81.3];
ydata = ...
 [455.2 428.6 124.1 67.3 43.2 28.1 13.1 -0.4 -1.3 -1.5];
fun = @(x)x(1)*exp(x(2)*xdata)-ydata;
x0 = [100,-1];
options = optimoptions(@lsqnonlin,'Algorithm','levenberg-marquardt');
%options.Algorithm = 'levenberg-marquardt';
x = lsqnonlin(fun,x0,[],[],options)

plot(xdata,ydata,'ko')
hold on
tlist = linspace(xdata(1),xdata(end));
plot(tlist,x(1)*exp(x(2)*tlist),'b-')
xlabel xdata
ylabel ydata
title('Exponential Fit to Data')
legend('Data','Exponential Fit')
hold off
