function [Rn,Gn,Bn]=kol_zad_6(R,G,B)
  for i=1:size(R,1)
    K(i)=(0.25*R(i))+(0.5*G(i))+(0.25*B(i));
    L(i)=(0.5*R(i))-(0.5*B(i));
    M(i)=(-0.25*R(i))+(0.5*G(i))-(0.25*B(i));
  endfor
  K=K';
  L=L';
  M=M';
  for i=1:size(K,1)
   if L(i)>128
     K(i)=103+0,2*K(i);
   endif
   
   endfor

    for i=1:size(K,1)
      Rn(i)=K(i)+L(i)-M(i);
      Gn(i)=K(i)+M(i);
      Bn(i)=K(i)-L(i)-M(i);
    endfor
endfunction
