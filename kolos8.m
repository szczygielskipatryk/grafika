img=double(imread('rzeczka2.png'));
czerwo=img(:,:,1);
wys=size(czerwo,1);
szer=size(czerwo,2);
srednia=mean(mean(czerwo))
for i=1:wys
  for j=1:szer
  if czerwo(i,j)<srednia
    czerwo(i,j)=10;
  else
    czerwo(i,j)=190/(255-srednia)*czerwo(i,j)+10-srednia*190/(255-srednia);
  endif
  endfor
endfor
img=cat(3,czerwo,img(:,:,2),img(:,:,3));
imshow(img/255)
