%
%     find the azimuth of a transform given a pole
%

%     Input is in degrees, output is in degrees
%      azimuth is cw from north

function az = aztran(polat,polon,sitlat,sitlon)

[tlat1,tlon1]=rot3(polat,polon,180 - sitlon);
[tlat2,tlon2]=rot2(tlat1,tlon1,90 - sitlat);

az = 90 - tlon2;
