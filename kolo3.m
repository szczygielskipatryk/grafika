img=imread('rzeczka.jpg');
img=double(img);
zielony=img(:,:,2);
x=sum(sum(zielony));
y=size(zielony,1)*size(zielony,2);
srednia=x/y;
wys=size(zielony,1);
szer=size(zielony,2);
zielonypre=zielony;
for i=1:wys
  for j=1:szer
    if zielony(i,j)<srednia
      zielony(i,j)=(222/srednia)*zielony(i,j);
    else
      zielony(i,j)=222;
    endif
  endfor
endfor
img_out=img;
img_out(:,:,2)=zielony;
max(max(zielony))
subplot(2,1,1)
imshow(img_out/255)
img = imread('rzeczka.jpg');
%Powy¿ej kod z instrukcji

function wynik = filtrZielony(obrazek)
  srednia = mean(reshape(obrazek,1,[]));
  %disp(srednia);
  wspolczynnik = 222 ./srednia;
  %disp(wspolczynnik);
  if obrazek>=srednia;
    wynik = 222;
  else 
    wynik = obrazek .* wspolczynnik;
  end
endfunction

img_out = double(img);
img_out(:,:,2) = filtrZielony(img_out(:,:,2));

%Poni¿ej kod z instrukcji
subplot(2,1,2)
imshow(img_out/255);