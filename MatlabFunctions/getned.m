%
%     convert from global(x,y, &z) to local(north, east, &down) coordinates
%     for a site located at sitlat and sitlon
%     sitlat and sitlon assumed to be in degrees
%

function [y,varargout] = getned(dsitlat,dsitlon,x,y,z)

sitlat=degrad(dsitlat);
sitlon=degrad(dsitlon);

north = -sin(sitlat)*cos(sitlon)*x-sin(sitlat)*sin(sitlon)*y+cos(sitlat)*z;
east = -sin(sitlon)*x+cos(sitlon)*y;
down = -cos(sitlat)*cos(sitlon)*x-cos(sitlat)*sin(sitlon)*y-sin(sitlat)*z;

y=north;
varargout(1)={east};
varargout(2)={down};
