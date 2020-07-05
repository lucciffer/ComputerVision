
image=imread('lena.png');
gray_image=rgb2gray(image);

img=double(gray_image);


for i=1:size(img,1)-2
    for j=1:size(img,2)-2
        %Sobel mask for x-direction:
        Gx=((2*img(i+2,j+1)+img(i+2,j)+img(i+2,j+2))-(2*img(i,j+1)+img(i,j)+img(i,j+2)));
        %Sobel mask for y-direction:
        Gy=((2*img(i+1,j+2)+img(i,j+2)+img(i+2,j+2))-(2*img(i+1,j)+img(i,j)+img(i+2,j)));
     
        %The gradient of the image
        %B(i,j)=abs(Gx)+abs(Gy);
        gray_image(i,j)=sqrt(Gx.^2+Gy.^2);
     
    end
end
figure,imshow(gray_image); 
title('Sobel gradient');

%Define a threshold value
Thresh=100;
gray_image=max(gray_image,Thresh);
gray_image(gray_image==round(Thresh))=0;

gray_image=uint8(gray_image);
figure,imshow(~gray_image);
title('Edge detected Image');