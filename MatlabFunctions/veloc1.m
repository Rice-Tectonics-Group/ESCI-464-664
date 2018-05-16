%  find velocity owing to rotation
%  input latitudes and longitudes are assumed to be in degrees
%  input omega assumed to be in degrees/m.y.
%  output velocity is in km/m.y.

function [y,varargout] = veloc1(polat,polon,domega,sitlat,sitlon)

[p1,p2,p3] = sphcar(polat,polon);
[a1,a2,a3] = sphcar(sitlat,sitlon);

r = 6370.8;
omega=degrad(domega);
vx = omega*r*(p2*a3-a2*p3);
vy = omega*r*(p3*a1-a3*p1);
vz = omega*r*(p1*a2-a1*p2);

[vnorth,veast,vdown] = getned(sitlat,sitlon,vx,vy,vz);

y=vnorth;
varargout(1)={veast};
