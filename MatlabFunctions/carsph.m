%----------------------------------
%
% Converts from cartesian to spherical coords
%
% input and output are in radians
%----------------------------------

function [y,varargout] = carsph(x1,x2,x3)

y=raddeg(asin(x3));
varargout(1)={raddeg(atan2(x2,x1))};
