img=imread('rzeczka2.png');
imgdbl=double(img);
imgdbl=imgdbl.-min(min(imgdbl));
imgdbl=imgdbl./max(max(imgdbl));
max(max(imgdbl))
min(min(imgdbl))
wys=size(imgdbl,1)
szer=size(imgdbl,2)
img_out=imgdbl;
iR=img_out(:,:,1);
iG=img_out(:,:,2);
iB=img_out(:,:,3);
for i=1:wys
  for j=1:szer
    %iR(i,j)=e^-(iR(i,j)-128)^2;
    %iG(i,j)=e^-(iG(i,j)-128)^2;
    iB(i,j)=e^-(iB(i,j)-128)^2;
  endfor
endfor
imgout=cat(3,iR,iG,iB);
imgout=imgout.*255;
imshow(imgout/255)