clear
img_org=double(imread('rzeczka_mniejsza.jpg'));
[rn,gn,bn]=kol_zad_6(vec(img_org(:,:,1)),vec(img_org(:,:,2)),vec(img_org(:,:,3)));
imshow(1/255*reshape([rn,gn,bn],size(img_org)));