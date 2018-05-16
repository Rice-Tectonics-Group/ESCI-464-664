%
%     find point at given distance and azimuth
%

%     Input is in degrees, output is in degrees
%     az is in degrees cw from north

function [y,varargout] = locate(oldlat,oldlon,angd,az)

[tlat,tlon]=rot2(90-angd,180-az,90-oldlat);
[tlat2,tlon2]=rot3(tlat,tlon,oldlon);
y=tlat2;
varargout(1)={tlon2};
