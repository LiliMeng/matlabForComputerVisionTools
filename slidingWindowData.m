function slidingWindowData(x,y)
figure
test = xlsread('camera_pose_Keyframe_MotionMetric0.1.xlsx', 'A1:F1000');
x=[1:1000];
y=test(:,6);

for i=[1:900]
   y(i)=y(i)/sum(y(i:i+100));
end


plot(x(1:900),y(1:900));
title('AccumlativeQvalue Per Battle Vs. Number of Battles ');
%scatter3(x,y,z,'filled')
xlabel('Number of battles'); % x-axis label
ylabel('AcummulativeQValue');% y-axis label

end
