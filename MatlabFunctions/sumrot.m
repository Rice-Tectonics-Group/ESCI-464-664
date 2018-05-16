%
%     find equivalent of two successive rotations
%     all lats, lons, and omegas assumed to be in radians
%

function [y,varargout] = sumrot(dlat1,dlon1,domega1,dlat2,dlon2,domega2)

p=[1 2]';
q=p;
r=p;
s=p;

lat1=degrad(dlat1);
lon1=degrad(dlon1);
omega1=degrad(domega1);

lat2=degrad(dlat2);
lon2=degrad(dlon2);
omega2=degrad(domega2);

tomg1 = omega1/2;
tomg2 = omega2/2;
tlat1 = (pi/2)-lat1;
tlat2 = (pi/2)-lat2;
p(1) = cos(tomg1);
p(2) = cos(tomg2);
q(1) = sin(tomg1)*sin(tlat1)*cos(lon1);
q(2) = sin(tomg2)*sin(tlat2)*cos(lon2);
r(1) = q(1)*tan(lon1);
r(2) = q(2)*tan(lon2);
s(1) = sin(tomg1)*cos(tlat1);
s(2) = sin(tomg2)*cos(tlat2);
pt = p(1)*p(2)-q(1)*q(2)-r(1)*r(2)-s(1)*s(2);

if pt<0
	yy = -1;
else
	yy = 1;
end

pt = pt*yy;
qt = (p(1)*q(2)+q(1)*p(2)-r(1)*s(2)+s(1)*r(2))*yy;
rt = (p(1)*r(2)+q(1)*s(2)+r(1)*p(2)-s(1)*q(2))*yy;
st = (p(1)*s(2)-q(1)*r(2)+r(1)*q(2)+s(1)*p(2))*yy;
aftomg = 2*acos(pt);
aftlat = ((pi/2)-acos(st/sin(acos(pt))));
aftlon = atan2(rt,qt);

y=raddeg(aftlat);
varargout(1)={raddeg(aftlon)}, varargout(2)={raddeg(aftomg)}

