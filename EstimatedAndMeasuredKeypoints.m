imageX1=[102,262,166,245,139,141,146];
imageY1=[188,200,285,160,50,50,49];

imageX2=[94,255,156,238,135,137,141];
imageY2=[218,230,317,190,83,82,81];

cameraX1=[-0.114755,-0.0320858,-0.0955657,0,-0.127569,-0.126061,0];
cameraY1=[-0.0269169,-0.0222269,0.0290119,0,-0.133924,-0.133806,0];
cameraZ1=[0.278,0.2972,0.3282,0,0.3726,0.3726,0];

cameraX2=[-0.118404,-0.0365332,-0.100265,0,-0.131094,-0.129692,-0.126098];
cameraY2=[-0.0112466,-0.00506663,0.0480359,0,-0.111414,-0.112024,-0.112188];
cameraZ2=[0.2758,0.2984,0.3222,0,0.3746,0.3746,0.3726]

x=cameraX2-cameraX1;
y=cameraY2-cameraY1;
z=cameraZ2-cameraZ1;
xaverage=sum(x(1:7))/7;
yaverage=sum(y(1:7))/7;
zaverage=sum(z(1:7))/7;

cameraX2Estimated=cameraX1+xaverage;
cameraY2Estimated=cameraY1+yaverage;
cameraZ2Estimated=cameraZ1+zaverage;


%hold on
%plot(imageX2,imageY2,'rx')

plot3(cameraX1,cameraY1,cameraZ1,'bo');
hold on
plot3(cameraX2,cameraY2,cameraZ2,'bx');
hold on 
plot3(cameraX2Estimated,cameraY2Estimated,cameraZ2Estimated,'rx');
%plot(tlist,x(1)*exp(x(2)*tlist),'b-')
xlabel xdata
ylabel ydata
zlabel zdata
title('Estimated and Measured Keypoints')
legend('measured camera position1','measured camera position2','Estimated camera position2')
hold off
