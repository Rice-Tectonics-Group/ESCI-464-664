%
%     rotate w degrees about an arbitrary pole
%

%     Input is in degrees, output is in degrees

function [y,varargout] = rotp(polat,polon,angle,oldlat,oldlon)

[tlat,tlon]= rot3(oldlat,oldlon,-polon);
[tlat2,tlon2]= rot2(tlat,tlon,polat - 90);
[tlat3,tlon3]= rot3(tlat2,tlon2,angle);
[tlat4,tlon4]= rot2(tlat3,tlon3,90 - polat);
[tlat5,tlon5]= rot3(tlat4,tlon4,polon);

y=tlat5;
varargout(1)={tlon5}

