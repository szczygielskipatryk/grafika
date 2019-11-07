img=double(imread('rzeczka2.png'));
zielony=img(:,:,2);
med=median(median(zielony))
wys=size(zielony,1);
szer=size(zielony,2);
starziel=zielony;
for i=1:wys
  for j=1:szer
    if zielony(i,j)<=med
      zielony(i,j)=((-219/med)*zielony(i,j))+222;
     else
      zielony(i,j)=222;
    endif
  endfor
endfor
img_out=cat(3,img(:,:,1),zielony,img(:,:,3));
imshow(img_out/255)