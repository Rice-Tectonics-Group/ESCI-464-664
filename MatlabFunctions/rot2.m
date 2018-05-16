%
%     rotate 'angle' degrees about axis #2
%

%     Input is in degrees, output is in degrees

function [y,varargout] = rot2(oldlat,oldlon,dangle)

angle=degrad(dangle);
[x1,x2,x3]=sphcar(oldlat,oldlon);
temp = x1;
x1 = x1 * cos(angle) + x3 * sin(angle);
x3 = x3 * cos(angle) - temp * sin(angle);
[tlat3,tlon3]=carsph(x1,x2,x3);
y=tlat3;
varargout(1)={tlon3};
