img=double(imread('rzeczka.jpg'));
x=size(img,2);
x=x/4;
imgl=img(:,1:2*x,:);
imgl=imgl(:,end:-1:1,:);
imgr=img(:,int32(2*x):int32(3*x),:);
img_out=[imgl imgr];
imshow(img_out/255)