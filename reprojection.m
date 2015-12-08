fx = 525.0; 
fy = 525.0; 

cx = 319.5; 
cy = 239.5;


K=[fx,0,cx,0;
    0,fy,cy,0;
    0,0,1,0];

%用很多点的fundamental matrix算出来的

P=[0.4278139416391136, 0.3115364458080023, 0.8484811572878465, 0.541328435788863;
  0.3670701987258821, 0.7979449275752478, -0.4780620898630989, -0.3425609228179873;
  0.8259749999525088, -0.5159737740333801, -0.2270162196038059, -0.7678642710560715
  0, 0, 0, 1.0000];


%用７个点的fundamental matrix算出来的
P1=[-0.9920695802940449, -0.1255310000902372, -0.006317900881021743, 0.2879067375907386;
  0.1256871016260497, -0.9904588419698321, -0.05651579291333014, -0.1474600769790712;
  -0.000836863215006145, 0.0568616776056088, -0.9983817152170985, -0.946237410033647;
  0,       0,         0,    1.0000];

%用３d点的SVD算出来的
 P2=[  0.9996    0.0265    0.0056   -0.0211
   -0.0271    0.9761    0.2155   -0.0560
    0.0002   -0.2156    0.9765    0.0495
         0         0         0    1.0000];

A1Col=[-0.114755;	-0.0269169;	0.278;1];
A2Col=[-0.0320858;	-0.0222269;	0.2972;1];
A3Col=[-0.0955657;	0.0290119;	0.3282;1];
A4Col=[0;	0;	0;1];
A5Col=[-0.127569;	-0.133924;	0.3726;1];
A6Col=[-0.126061;	-0.133806;	0.3726;1];
A7Col=[0;	0;	0;1];

ACol=[A1Col,A2Col,A3Col,A4Col,A5Col,A6Col,A7Col];


%X=[-0.114755;	-0.0269169;	0.278; 1];


%用很多点的fundamental matrix算出来的
for i=1:7
    EstimatedU1(:,i)=K*P*ACol(:,i);
end

for i=1:7
    Estimatedux1(:,i)=EstimatedU1(1,i)/EstimatedU1(3,i);
    Estimateduy1(:,i)=EstimatedU1(2,i)/EstimatedU1(3,i);
end

%用７个点的fundamental matrix算出来的
for i=1:7
    EstimatedU2(:,i)=K*P1*ACol(:,i);
end

for i=1:7
    Estimatedux2(:,i)=EstimatedU2(1,i)/EstimatedU2(3,i);
    Estimateduy2(:,i)=EstimatedU2(2,i)/EstimatedU2(3,i);
end

%用３d点的SVD算出来的
for i=1:7
    EstimatedU3(:,i)=K*P2*ACol(:,i);
end

for i=1:7
    Estimatedux3(:,i)=EstimatedU3(1,i)/EstimatedU3(3,i);
    Estimateduy3(:,i)=EstimatedU3(2,i)/EstimatedU3(3,i);
end


UEstimatedImage2=[ux;uy];

imageMeasuredX1=[102,262,166,245,139,141,146];
imageMeasuredY1=[188,200,285,160,50,50,49];

imageMeasuredX2=[94,255,156,238,135,137,141];
imageMeasuredY2=[218,230,317,190,83,82,81];


plot(imageMeasuredX1,imageMeasuredY1,'bo');
hold on
plot(imageMeasuredX2,imageMeasuredY2,'bx');
hold on 
plot( Estimatedux1, Estimateduy1,'rx');
plot( Estimatedux2, Estimateduy2,'r*');
plot( Estimatedux3, Estimateduy3,'gx');
%plot(tlist,x(1)*exp(x(2)*tlist),'b-')
xlabel xdata
ylabel ydata

title('Estimated and Measured Keypoints')
legend('measured image position1','measured image position2','Estimated image position2 using　many keypoints','Estimated image position2 using　7keypoints','Estimated image position2 using　3D SVD' )
hold off
