%
%     rotate 'angle' degrees about axis #1
%

%     Input is in degrees, output is in degrees

function [y,varargout] = rot1(oldlat,oldlon,angle)

[tlat,tlon]=rot2(oldlat,oldlon,-90);
[tlat2,tlon2]=rot3(tlat,tlon,angle);
[tlat3,tlon3]=rot2(tlat2,tlon2,90);
y=tlat3;
varargout(1)={tlon3};
