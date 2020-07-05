% % Open the txt file
fid = fopen('output.txt', 'r');
% Scann the txt file 
img = fscanf(fid, '%x', [1 inf]); 
% Close the txt file
fclose(fid) 
% restore the image
outImg = reshape(img,[32 32]);
outImg = outImg';
figure, imshow(outImg,[])