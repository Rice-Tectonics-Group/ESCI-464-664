%t%
% Converts from spherical to cartesian coords
%

% input is  in degrees, output is in radians

function [y,varargout] = sphcar(dlat,dlon)

lat=degrad(dlat);
lon=degrad(dlon);

y=cos(lat)*cos(lon);
varargout(1)= {cos(lat)*sin(lon)};
varargout(2)= {sin(lat)};

