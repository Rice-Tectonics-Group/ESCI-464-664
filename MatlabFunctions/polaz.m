%
%     find pole given point and azimuth of great circle
%

%     Input is in degrees, output is in degrees
%      azimuth is cw from north

function [paz,varargout] = polaz(ptlat,ptlon,az)

[tlat,tlon]=rot2(0,90-az,90-ptlat);
[plat,plon]=rot3(tlat,tlon,ptlon);
paz=plat;
varargout(1)={plon};
