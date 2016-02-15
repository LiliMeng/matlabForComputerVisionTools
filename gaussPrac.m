x=1:1:11;
for i=1:11
y1=gaussmf(x, [0.8 i-1]);
y2=gaussmf(x, [0.8 i+1]);
y=y1+y2;
figure
plot(x,y)
filename = sprintf('%d', i);
%saveas(gcf,filename,'epsc')
saveas(gcf,filename,'png')
end
