img=double(imread('rzeczka2.png'));
img=double(img);
min(min(img))
lewy=img(:,int32((end/2)+1):3:int32(end),:);
img=img/255;
gamma=1.5
for i=1:size(img,1)
  for j=1:size(img,2)
    for k=1:size(img,3)
      if img(i,j,k)^(1/gamma)>255
        img(i,j,k)=255;
      elseif img(i,j,k)^(1/gamma)<0
        img(i,j,k)=0;
      else
        img(i,j,k)=img(i,j,k).^(1/gamma);
      endif
    endfor
  endfor
endfor
img=img*255;
img=[lewy img];
imshow(img/255)
