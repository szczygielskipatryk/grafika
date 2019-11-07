img=imread('rzeczka.jpg');
img=double(img);
x=size(img,2)/2
obrazekl=img(:,1:x,:);
obrazekr=obrazekl(end:-1:1,:,:);
imshow(obrazekr/255)
img_out=[obrazekl obrazekr];
imshow(img_out/255)