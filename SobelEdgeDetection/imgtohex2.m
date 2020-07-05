a= imread('girl.png');
figure, imshow(a);
I=rgb2gray(a);
imgTrans = I';
% iD conversion
img1D = I(:);
% Decimal to Hex value conversion
imgHex = dec2hex(img1D);
% New txt file creation
fid = fopen('inputHex.txt', 'wt');
% Hex value write to the txt file
fprintf(fid, '%x\n', imgHex);
% Close the txt file
fclose(fid)
