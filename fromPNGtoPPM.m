for i = 1 :100
 I = imread(sprintf('%d.png', i));
 imwrite(I, sprintf('%d.ppm', i));
end
