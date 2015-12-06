old=digits(10)

imageX1=[102,262,166,245,139,141,146];
imageY1=[188,200,285,160,50,50,49];

imageX2=[94,255,156,238,135,137,141];
imageY2=[218,230,317,190,83,82,81];


A1=[-0.114755	-0.0269169	0.278];
A2=[-0.0320858	-0.0222269	0.2972];
A3=[-0.0955657	0.0290119	0.3282];
A4=[0	0	0];
A5=[-0.127569	-0.133924	0.3726];
A6=[-0.126061	-0.133806	0.3726];
A7=[0	0	0];
A=[A1;A2;A3;A4;A5;A6;A7];

B1=[-0.118404	-0.0112466	0.2758];
B2=[-0.0365332	-0.00506663  0.2984];
B3=[-0.100265	0.0480359	0.3222];
B4=[0	0	0];
B5=[-0.131094	-0.111414	0.3746];
B6=[-0.129692	-0.112024	0.3746];
B7=[-0.126098	-0.112188	0.3726];
B=[B1;B2;B3;B4;B5;B6;B7];

A1Col=[-0.114755;	-0.0269169;	0.278];
A2Col=[-0.0320858;	-0.0222269;	0.2972];
A3Col=[-0.0955657;	0.0290119;	0.3282];
A4Col=[0;	0;	0];
A5Col=[-0.127569;	-0.133924;	0.3726];
A6Col=[-0.126061;	-0.133806;	0.3726];
A7Col=[0;	0;	0];


B1Col=[-0.118404;	-0.0112466;	0.2758];
B2Col=[-0.0365332;	-0.00506663;0.2984];
B3Col=[-0.100265;	0.0480359;	0.3222];
B4Col=[0;	0;	0];
B5Col=[-0.131094;	-0.111414;	0.3746];
B6Col=[-0.129692;	-0.112024;	0.3746];
B7Col=[-0.126098;	-0.112188;	0.3726];

transformTotal=rigid_transform_3D(A,B);
rotationTotal=transformTotal(1:3,1:3);
translationTotal=transformTotal(1:3,4);
rodriguesTotal=rodrigues(rotationTotal);
jointTotal=[translationTotal;rodriguesTotal];

 A1homo=[A1Col;1];
 B1estimatedHomo=transformTotal*A1homo;
 B1estimated=B1estimatedHomo(1:3);
 Error1=B1estimated-B1Col;

 A2homo=[A2Col;1];
 B2estimatedHomo=transformTotal*A2homo;
 B2estimated=B2estimatedHomo(1:3);
 Error2=B2estimated-B2Col;
 
 A3homo=[A3Col;1];
 B3estimatedHomo=transformTotal*A3homo;
 B3estimated=B3estimatedHomo(1:3);
 Error3=B3estimated-B3Col;
 
 A4homo=[A4Col;1];
 B4estimatedHomo=transformTotal*A4homo;
 B4estimated=B4estimatedHomo(1:3);
 Error4=B4estimated-B4Col;
 
 A5homo=[A5Col;1];
 B5estimatedHomo=transformTotal*A5homo;
 B5estimated=B5estimatedHomo(1:3);
 Error5=B5estimated-B5Col;
 
 A6homo=[A6Col;1];
 B6estimatedHomo=transformTotal*A6homo;
 B6estimated=B6estimatedHomo(1:3);
 Error6=B1estimated-B6Col;
 
 A7homo=[A7Col;1];
 B7estimatedHomo=transformTotal*A7homo;
 B7estimated=B7estimatedHomo(1:3);
 Error7=B7estimated-B7Col;
 
%{
 transform1=rigid_transform_3D(A1, B1);
 rotation1=transform1(1:3,1:3);
 translation1=transform1(1:3,4);
 rodrigues1=rodrigues(rotation1);
 joint1=[translation1;rodrigues1];
 A1homo=[A1Col;1];
 B1estimatedHomo=transform1*A1homo;
 B1estimated=B1estimatedHomo(1:3);
 Error1=B1estimated-B1Col;
 
 transform2=rigid_transform_3D(A1, B1);
 rotation2=transform2(1:3,1:3);
 translation2=transform2(1:3,4);
 rodrigues2=rodrigues(rotation2);
 joint2=[translation2;rodrigues2];
 A2homo=[A2Col;1];
 B2estimatedHomo=transform2*A2homo;
 B2estimated=B2estimatedHomo(1:3);
 Error2=B2estimated-B2Col;
 
 
 transform3=rigid_transform_3D(A1, B1);
 rotation3=transform3(1:3,1:3);
 translation3=transform3(1:3,4);
 rodrigues3=rodrigues(rotation3);
 joint3=[translation3;rodrigues3];
 A3homo=[A3Col;1];
 B3estimatedHomo=transform3*A3homo;
 B3estimated=B3estimatedHomo(1:3);
 Error3=B3estimated-B3Col;
 
  
 transform4=rigid_transform_3D(A1, B1);
 rotation4=transform4(1:3,1:3);
 translation4=transform4(1:3,4);
 rodrigues4=rodrigues(rotation4);
 joint4=[translation4;rodrigues4];
 A4homo=[A4Col;1];
 B4estimatedHomo=transform4*A4homo;
 B4estimated=B4estimatedHomo(1:3);
 Error4=B4estimated-B4Col;
 
 
 transform5=rigid_transform_3D(A1, B1);
 rotation5=transform5(1:3,1:3);
 translation5=transform5(1:3,4);
 rodrigues5=rodrigues(rotation5);
 joint5=[translation5;rodrigues5];
 A5homo=[A5Col;1];
 B5estimatedHomo=transform5*A5homo;
 B5estimated=B5estimatedHomo(1:3);
 Error5=B5estimated-B5Col;
 
  
 transform6=rigid_transform_3D(A1, B1);
 rotation6=transform6(1:3,1:3);
 translation6=transform6(1:3,4);
 rodrigues6=rodrigues(rotation6);
 joint6=[translation6;rodrigues6];
 A6homo=[A6Col;1];
 B6estimatedHomo=transform6*A6homo;
 B6estimated=B6estimatedHomo(1:3);
 Error6=B1estimated-B6Col;
 
 
 transform7=rigid_transform_3D(A1, B1);
 rotation7=transform7(1:3,1:3);
 translation7=transform7(1:3,4);
 rodrigues7=rodrigues(rotation7);
 joint7=[translation7;rodrigues7];
 A7homo=[A7Col;1];
 B7estimatedHomo=transform7*A7homo;
 B7estimated=B7estimatedHomo(1:3);
 Error7=B7estimated-B7Col;
 %}




cameraX1=[-0.114755,-0.0320858,-0.0955657,0,-0.127569,-0.126061,0];
cameraY1=[-0.0269169,-0.0222269,0.0290119,0,-0.133924,-0.133806,0];
cameraZ1=[0.278,0.2972,0.3282,0,0.3726,0.3726,0];

cameraX2Estimated=[B1estimated(1),B2estimated(1),B3estimated(1),B4estimated(1),B5estimated(1),B6estimated(1),B7estimated(1)];
cameraY2Estimated=[B1estimated(2),B2estimated(2),B3estimated(2),B4estimated(2),B5estimated(2),B6estimated(2),B7estimated(2)];
cameraZ2Estimated=[B1estimated(3),B2estimated(3),B3estimated(3),B4estimated(3),B5estimated(3),B6estimated(3),B7estimated(3)];

cameraX2=[-0.118404,-0.0365332,-0.100265,0,-0.131094,-0.129692,-0.126098];
cameraY2=[-0.0112466,-0.00506663,0.0480359,0,-0.111414,-0.112024,-0.112188];
cameraZ2=[0.2758,0.2984,0.3222,0,0.3746,0.3746,0.3726];
 

plot3(cameraX1,cameraY1,cameraZ1,'bo');
hold on
plot3(cameraX2,cameraY2,cameraZ2,'bx');
hold on 
plot3(cameraX2Estimated,cameraY2Estimated,cameraZ2Estimated,'rx');
%plot(tlist,x(1)*exp(x(2)*tlist),'b-')
xlabel xdata
ylabel ydata
zlabel zdata
title('Estimated and Measured Keypoints in Camera Coordinate')
legend('measured keypoints in camera position1','measured  keypoints in camera position2','Estimated keypoints in camera position2 using SVD for transformation')
hold off
 
