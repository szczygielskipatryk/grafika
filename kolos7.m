img=double(imread('rzeczka.jpg'));
imggora=img((end/2)+1:1:end,:,:);
imgdol=img((end/2)+1:3:end,:,:);
img_out=[imggora;imgdol];
imshow(img_out/255)