function mac=kolokwium1(kat,przesuniecie_x, przesuniecie_y)
  kat=deg2rad(-kat);
  macierz_kat=[cos(kat),-sin(kat),0;sin(kat),cos(kat),0;0,0,1];
  macierz_przes=[1,0,przesuniecie_x;0,1,przesuniecie_y;0,0,1];
  mac=macierz_przes*macierz_kat;
endfunction
