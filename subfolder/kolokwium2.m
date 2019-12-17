function kolokwium2(csv)
  x=csv(:,1)';
  y=csv(:,2)';
  jedynki=ones(size(x,1),size(x,2));
  macierz=[x;y;jedynki];
  macierz_obrobki=[1,0.2,3;0.4,5,6;0,0,1];
  wynik=macierz_obrobki*macierz;
  wynik=[wynik(1,:)',wynik(2,:)'];
  plot(wynik(:,1),wynik(:,2),'s');
endfunction
