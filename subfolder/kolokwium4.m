function mac=kolokwium4
  kat=deg2rad(90)
  macierz_przes=[1,0,1;0,1,-1;0,0,1];
  macierz_kat=[cos(kat),-sin(kat),0;sin(kat),cos(kat),0;0,0,1];
  macierz_skala=[1,0,0;0,1/2,0;0,0,0];
  mac=macierz_skala*macierz_przes*macierz_kat;
endfunction