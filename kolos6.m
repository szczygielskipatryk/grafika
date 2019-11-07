img=double(imread('rzeczka.jpg'));
imgl=img(:,1:200,:);
imgl=imgl(:,end:-1:1,:);
imgr=img;
wys=size(imgr,1);
szer=size(imgr,2);
wsp=127
for i=1:wys
  for j=1:szer
    for k=1:size(imgr,3)
    if wsp+(imgr(i,j,k)/2)>255
      imgr(i,j,k)=255;
    elseif wsp+(imgr(i,j,k)/2)<0
      imgr(i,j,k)=0;
    else
      imgr(i,j,k)=wsp+(imgr(i,j,k)/2);
    endif
    endfor
   endfor
 endfor
img_out=[imgl imgr];
imshow(img_out/255);

